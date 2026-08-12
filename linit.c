/*
** $Id: linit.c $
** Initialization of libraries for lua.c and other clients
** See Copyright Notice in lua.h
*/


#define linit_c
#define LUA_LIB


#include "lprefix.h"


#include <stddef.h>
#include <string.h>

#include "lua.h"

#include "lualib.h"
#include "lauxlib.h"
#include "llimits.h"

static const char *locale_get (lua_State *L,
                               const char *section,
                               const char *key,
                               const char *fallback) {
  const char *out = fallback;
  int top = lua_gettop(L);
  if (lua_getfield(L, LUA_REGISTRYINDEX, "LUA_LOCALE_TABLE") == LUA_TTABLE &&
      lua_getfield(L, -1, section) == LUA_TTABLE &&
      lua_getfield(L, -1, key) == LUA_TSTRING) {
    const char *s = lua_tostring(L, -1);
    if (s != NULL && s[0] != '\0')
      out = s;
  }
  else {
    lua_settop(L, top);
    if (lua_getfield(L, LUA_REGISTRYINDEX, "LUA_BASE_LOCALE_TABLE") == LUA_TTABLE &&
        lua_getfield(L, -1, section) == LUA_TTABLE &&
        lua_getfield(L, -1, key) == LUA_TSTRING) {
      const char *s = lua_tostring(L, -1);
      if (s != NULL && s[0] != '\0')
        out = s;
    }
  }
  lua_settop(L, top);
  return out;
}


static const char *locale_global_name (lua_State *L) {
  return locale_get(L, "internals", "global·table·identifier", LUA_GNAME);
}

static const char *locale_os_name (lua_State *L) {
  return locale_get(L, "aliases", "os·library·identifier", LUA_OSLIBNAME);
}


static void add_locale_global_aliases (lua_State *L) {
  int top = lua_gettop(L);
  struct {
    const char *key;
    const char *native;
  } aliases[] = {
    {"print·function·alias", "print"},
    {"assert·function·alias", "assert"},
    {"error·function·alias", "error"},
    {"tostring·function·alias", "tostring"},
    {"warn·function·alias", "warn"},
    {"type·function·alias", "type"},
    {"rawget·function·alias", "rawget"},
    {"rawset·function·alias", "rawset"},
    {"getmetatable·function·alias", "getmetatable"},
    {"setmetatable·function·alias", "setmetatable"},
    {"load·function·alias", "load"},
    {"ipairs·function·alias", "ipairs"},
    {"select·function·alias", "select"},
    {"debug·library·identifier", "debug"},
    {"string·library·identifier", "string"},
    {NULL, NULL}
  };
  
  lua_pushglobaltable(L);  /* push _G */
  for (int i = 0; aliases[i].key != NULL; i++) {
    const char *localized = locale_get(L, "aliases", aliases[i].key, NULL);
    if (localized != NULL && localized[0] != '\0') {
      lua_getfield(L, -1, aliases[i].native);  /* push native function */
      if (!lua_isnil(L, -1)) {
        lua_setfield(L, -2, localized);
      } else {
        lua_pop(L, 1);
      }
    }
  }
  lua_pop(L, 1);
  lua_settop(L, top);
}

static void add_locale_table_field_aliases (lua_State *L) {
  int top = lua_gettop(L);
  struct {
    const char *table_name;
    const char *alias_key;
    const char *native_field;
  } aliases[] = {
    {"os", "os·exit·method", "exit"},
    {"os", "os·tmpname·method·alias", "tmpname"},
    {"os", "os·execute·method·alias", "execute"},
    {"os", "os·remove·method·alias", "remove"},
    {"os", "os·getenv·method·alias", "getenv"},
    {"os", "os·setlocale·method·alias", "setlocale"},
    {"io", "io·open·method·alias", "open"},
    {"io", "io·input·method·alias", "input"},
    {"io", "io·read·method·alias", "read"},
    {"io", "io·close·method·alias", "close"},
    {"io", "io·setvbuf·method·alias", "setvbuf"},
    {"string", "string·find·method·alias", "find"},
    {"string", "string·gsub·method·alias", "gsub"},
    {"debug", "debug·gethook·method·alias", "gethook"},
    {"debug", "debug·sethook·method·alias", "sethook"},
    {"debug", "debug·getlocal·method·alias", "getlocal"},
    {"debug", "debug·setlocal·method·alias", "setlocal"},
    {"debug", "debug·getupvalue·method·alias", "getupvalue"},
    {"debug", "debug·setupvalue·method·alias", "setupvalue"},
    {"debug", "debug·getregistry·method·alias", "getregistry"},
    {"debug", "debug·getinfo·method·alias", "getinfo"},
    {NULL, NULL, NULL}
  };

  lua_pushglobaltable(L);
  for (int i = 0; aliases[i].table_name != NULL; i++) {
    const char *localized = locale_get(L, "aliases", aliases[i].alias_key, NULL);
    if (localized == NULL || localized[0] == '\0')
      continue;
    lua_getfield(L, -1, aliases[i].table_name);
    if (!lua_istable(L, -1)) {
      lua_pop(L, 1);
      continue;
    }
    lua_getfield(L, -1, aliases[i].native_field);
    if (!lua_isnil(L, -1))
      lua_setfield(L, -2, localized);
    else
      lua_pop(L, 1);
    lua_pop(L, 1);  /* pop table */
  }
  lua_pop(L, 1);  /* pop _G */
  lua_settop(L, top);
}


/*
** Standard Libraries. (Must be listed in the same ORDER of their
** respective constants LUA_<libname>K.)
*/
static const luaL_Reg stdlibs[] = {
  {LUA_GNAME, luaopen_base},
  {LUA_LOADLIBNAME, luaopen_package},
  {LUA_COLIBNAME, luaopen_coroutine},
  {LUA_DBLIBNAME, luaopen_debug},
  {LUA_IOLIBNAME, luaopen_io},
  {LUA_MATHLIBNAME, luaopen_math},
  {LUA_OSLIBNAME, luaopen_os},
  {LUA_STRLIBNAME, luaopen_string},
  {LUA_TABLIBNAME, luaopen_table},
  {LUA_UTF8LIBNAME, luaopen_utf8},
  {NULL, NULL}
};


/*
** require and preload selected standard libraries
*/
LUALIB_API void luaL_openselectedlibs (lua_State *L, int load, int preload) {
  int mask;
  const luaL_Reg *lib;
  luaL_getsubtable(L, LUA_REGISTRYINDEX, LUA_PRELOAD_TABLE);
  for (lib = stdlibs, mask = 1; lib->name != NULL; lib++, mask <<= 1) {
    const char *name = (mask == LUA_GLIBK) ? locale_global_name(L) : lib->name;
    if (load & mask) {  /* selected? */
      int glb = 1;
      if (mask == LUA_GLIBK) {
        if (lua_getfield(L, LUA_REGISTRYINDEX, "LUA_PLAINLOCALE") == LUA_TBOOLEAN &&
            lua_toboolean(L, -1))
          glb = 0;
        lua_pop(L, 1);
      }
      luaL_requiref(L, name, lib->func, glb);  /* require library */
      if (mask == LUA_OSLIBK) {
        const char *osname = locale_os_name(L);
        if (osname[0] != '\0' && strcmp(osname, name) != 0) {
          lua_pushglobaltable(L);
          lua_pushvalue(L, -2);  /* library table */
          lua_setfield(L, -2, osname);
          lua_pop(L, 1);  /* global table */
        }
      }
      lua_pop(L, 1);  /* remove result from the stack */
    }
    else if (preload & mask) {  /* selected? */
      lua_pushcfunction(L, lib->func);
      lua_setfield(L, -2, name);  /* add library to PRELOAD table */
    }
  }
  lua_assert((mask >> 1) == LUA_UTF8LIBK);
  lua_pop(L, 1);  /* remove PRELOAD table */
  add_locale_global_aliases(L);
  add_locale_table_field_aliases(L);
  
  /* Add localized library aliases by name (e.g., signovico = string, eneligo = io) */
  lua_pushglobaltable(L);
  lua_getfield(L, -1, "string");
  if (!lua_isnil(L, -1)) {
   lua_setfield(L, -2, "signovico");  /* _G.signovico = _G.string */
  } else {
   lua_pop(L, 1);
  }
  lua_getfield(L, -1, "io");
  if (!lua_isnil(L, -1)) {
   lua_setfield(L, -2, "eneligo");  /* _G.eneligo = _G.io */
  } else {
   lua_pop(L, 1);
  }
  lua_pop(L, 1);  /* pop _G */
}
