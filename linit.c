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
  lua_settop(L, top);
  return out;
}


static const char *locale_global_name (lua_State *L) {
  return locale_get(L, "internals", "global·table·identifier", LUA_GNAME);
}

static const char *locale_os_name (lua_State *L) {
  return locale_get(L, "aliases", "os·library·identifier", LUA_OSLIBNAME);
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
      luaL_requiref(L, name, lib->func, 1);  /* require library */
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
}
