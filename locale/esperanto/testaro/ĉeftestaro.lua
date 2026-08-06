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
assert(locale.keywords["unconditional·transfer"] == "salto")
assert(locale.keywords["dynamic·scope·declaration"] == "tutmonda")
assert(locale.keywords["block·terminator"] == "fino")
assert(locale.lexical["string·token"] == "<ĉeno>")
assert(locale.repl["usage·description"]:find("⟪plain locale mode⟫", 1, vera))
assert(locale.diagnostics["warning·prefix"] == "Lua averto: ")
assert(locale.internals["locale·environment·variable"] == "LUA_LOCALE")
assert(locale.internals["locale·table·registry·key"] == "LUA_LOCALE_TABLE")
assert(locale.diagnostics["stack·traceback·header"] == "staka spuro:")

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

must_find([[./lua -e "se vera tiam print('se-ok') alie print('no') fino"]], "se-ok")
must_find([[./lua -e "loka n=0; dum n<2 faru n=n+1 fino; print(n)"]], "2")
must_find([[./lua -e "funkcio duoblu(n) redonu n+n fino; print(duoblu(2))"]], "4")
must_find([[./lua -e "por i en ipairs({1}) faru print(i) fino"]], "1")
must_find([[./lua -e "ripetu print('esperanto-loop-ok') ĝis vera"]], "esperanto-loop-ok")
must_find([[./lua -e "loka i=0; ::L:: i=i+1; se i<2 tiam salto L fino; print(i)"]], "2")
must_find([[./lua -e "loka n=0; dum vera faru rompu fino; print('rompu-ok')"]], "rompu-ok")
must_find([[./lua -e "loka <konst> x = 1; print(x)"]], "1")
must_find([[./lua -e "loka t={1}; print(#t, 7//2, 7/2, 5%2, 1<<3, 8>>1)"]], "3")
must_find([[./lua -e "print((vera aŭ malvera) kaj (ne malvera) kaj (nulo == nulo))"]], "true")
must_find([[./lua -W -e "warn('saluton')"]], "Lua averto: saluton")
must_fail_find([[./lua -e "error({})"]], "erarobjekto estas")
must_find([[./lua -P -e "print('esperanto-ok')"]], "esperanto-ok")

print("esperanto-locale-ok")
