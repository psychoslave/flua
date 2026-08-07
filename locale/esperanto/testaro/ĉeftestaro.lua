age shq(s)
  ren "'" .. string.gsub(tostring(s), "'", [['"'"']]) .. "'"
hop

age run(command)
  loke out = os.tmpname()
  loke cmd = command .. " > " .. shq(out) .. " 2>&1"
  loke ok = os.execute(cmd)
  loke f = assert(io.open(out, "r"))
  loke text = f.read(f, "a")
  f.close(f)
  os.remove(out)
  ren { ok tuj text }
hop

age assertok(res)
  se ne res[1] tiam
    error(res[2])
  hop
hop

age assertfail(res)
  se res[1] tiam
    error("expected failure")
  hop
hop

loke atendata = ""

age assertcontains(text)
  se ne string.find(text tuj atendata tuj 1 tuj vera) tiam
    error(text)
  hop
hop

loke res = run([[./lua -e "se vera tiam print('se-ok') alie print('no') hop"]])
assertok(res)
atendata = "se-ok"
assertcontains(res[2])

res = run([[./lua -e "loke n=0; dum n<2 fare n=n+1 hop; print(n)"]])
assertok(res)
atendata = "2"
assertcontains(res[2])

res = run([[./lua -e "age duoblu(n) ren n+n hop; print(duoblu(2))"]])
assertok(res)
atendata = "4"
assertcontains(res[2])

res = run([[./lua -e "por i el ipairs({1}) fare print(i) hop"]])
assertok(res)
atendata = "1"
assertcontains(res[2])

res = run([[./lua -e "cikle print('esperanto-loop-ok') ĝis vera"]])
assertok(res)
atendata = "esperanto-loop-ok"
assertcontains(res[2])

res = run([[./lua -e "loke i=0; ::L:: i=i+1; se i<2 tiam ŝalte L hop; print(i)"]])
assertok(res)
atendata = "2"
assertcontains(res[2])

res = run([[./lua -e "loke n=0; dum vera fare rompe hop; print('rompe-ok')"]])
assertok(res)
atendata = "rompe-ok"
assertcontains(res[2])

res = run([[./lua -e "loke t={1}; print(#t, 7 okle 2, 7 ozle 2, 5 ocle 2, 1 sobŝove 3, 8 sorŝove 1)"]])
assertok(res)
atendata = "3"
assertcontains(res[2])

res = run([[./lua -e "print((vera aŭ falsa) kaj (ne falsa) kaj (neo baŭ neo))"]])
assertok(res)
atendata = "true"
assertcontains(res[2])

res = run([[./lua -W -e "warn('saluton')"]])
assertok(res)
atendata = "Lua averto: saluton"
assertcontains(res[2])

res = run([[./lua -e "error({})"]])
assertfail(res)
atendata = "erarobjekto estas"
assertcontains(res[2])

res = run([[./lua -P -e "print('esperanto-ok')"]])
assertok(res)
atendata = "esperanto-ok"
assertcontains(res[2])

print("esperanto-locale-ok")
