local function shq(s)
  return "'" .. tostring(s):gsub("'", [['"'"']]) .. "'"
end

local function run(command)
  local out = os.tmpname()
  local cmd = command .. " > " .. shq(out) .. " 2>&1"
  local ok = os.execute(cmd)
  local f = assert(io.open(out, "r"))
  local text = f:read("a")
  f:close()
  os.remove(out)
  return ok, text
end

local locale = assert(dofile("locale/esperanto.lua"))
assert(locale.repl["usage·description"]:find("⟪plain locale mode⟫", 1, true))
assert(locale.diagnostics["warning·prefix"] == "Lua averto: ")

local function must_find(command, needle)
  local ok, out = run(command)
  assert(ok, out)
  assert(out:find(needle, 1, true), out)
end

local function must_fail_find(command, needle)
  local ok, out = run(command)
  assert(not ok, out)
  assert(out:find(needle, 1, true), out)
end

must_find([[env LUA_LOCALE=esperanto ./lua -W -e "warn('saluton')"]], "Lua averto: saluton")
must_fail_find([[env LUA_LOCALE=esperanto ./lua -e "error({})"]], "erarobjekto estas")
must_find([[env LUA_LOCALE=esperanto ./lua -P -e "print('esperanto-ok')"]], "esperanto-ok")

print("esperanto-locale-ok")
