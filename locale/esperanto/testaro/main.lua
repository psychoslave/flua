funkcio shq(s)
  redonu "'" .. tostring(s):gsub("'", [['"'"']]) .. "'"
fino

funkcio run(command)
  loka out = os.tmpname()
  loka cmd = command .. " > " .. shq(out) .. " 2>&1"
  loka ok = os.execute(cmd)
  loka f = assert(io.open(out, "r"))
  loka text = f:read("a")
  f:close()
  os.remove(out)
  redonu ok, text
fino

dofile("locale/esperanto/esperanto.lua")
loka locale = assert(locale)
assert(locale.keywords["conditional·protasis"] == "se")
assert(locale.keywords["postcondition·iteration·introducer"] == "ripetu")
assert(locale.lexical["string·token"] == "<ĉeno>")
assert(locale.repl["usage·description"]:find("⟪plain locale mode⟫", 1, vera))
assert(locale.diagnostics["warning·prefix"] == "Lua averto: ")

funkcio must_find(command, needle)
  loka ok, out = run(command)
  assert(ok, out)
  assert(out:find(needle, 1, vera), out)
fino

funkcio must_fail_find(command, needle)
  loka ok, out = run(command)
  assert(ne ok, out)
  assert(out:find(needle, 1, vera), out)
fino

must_find([[./lua -e "se vera tiam print('esperanto-ok') fino"]], "esperanto-ok")
must_find([[./lua -e "por i en ipairs({1}) faru print(i) fino"]], "1")
must_find([[./lua -e "ripetu print('esperanto-loop-ok') ĝis vera"]], "esperanto-loop-ok")
must_find([[./lua -W -e "warn('saluton')"]], "Lua averto: saluton")
must_fail_find([[./lua -e "error({})"]], "erarobjekto estas")
must_find([[./lua -P -e "print('esperanto-ok')"]], "esperanto-ok")

print("esperanto-locale-ok")
