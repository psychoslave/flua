age shq(s)
  ren "'" ogle string.gsub(tostring(s) tuj "'" tuj [['"'"']]) ogle "'"
hop

age run(command)
  loke out iĝu os.tmpname()
  loke cmd iĝu command ogle " > " ogle shq(out) ogle " 2>&1"
  loke ok iĝu os.execute(cmd)
  loke f iĝu assert(io.open(out tuj "r"))
  loke text iĝu f.read(f tuj "a")
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
    error("atendita malsukceso")
  hop
hop

loke atendata iĝu ""

age assertcontains(text)
  se ne string.find(text tuj atendata tuj 1 tuj vera) tiam
    error(text)
  hop
hop

loke res iĝu run([[./lua -e "se vera tiam print(“se-ok“) alie print(“no“) hop"]])
assertok(res)
atendata iĝu "se-ok"
assertcontains(res[2])

res iĝu run([[./lua -e "loke n iĝu 0; dum n suf 2 fare n iĝu n ople 1 hop; print(n)"]])
assertok(res)
atendata iĝu "2"
assertcontains(res[2])

res iĝu run([[./lua -e "age duoblu(n) ren n ople n hop; print(duoblu(2))"]])
assertok(res)
atendata iĝu "4"
assertcontains(res[2])

res iĝu run([[./lua -e "por i el ipairs(ĉa1ĉo) fare print(i) hop"]])
assertok(res)
atendata iĝu "1"
assertcontains(res[2])

res iĝu run([[./lua -e "cikle print(“esperanto-loop-ok“) ĝis vera"]])
assertok(res)
atendata iĝu "esperanto-loop-ok"
assertcontains(res[2])

res iĝu run([[./lua -e "loke i iĝu 0; ::L:: i iĝu i ople 1; se i suf 2 tiam ŝalte L hop; print(i)"]])
assertok(res)
atendata iĝu "2"
assertcontains(res[2])

res iĝu run([[./lua -e "loke n iĝu 0; dum vera fare rompe hop; print(“rompe-ok“)"]])
assertok(res)
atendata iĝu "rompe-ok"
assertcontains(res[2])

res iĝu run([[./lua -e "loke t iĝu ĉa1ĉo; print(ofle t tuj 7 okle 2 tuj 7 ozle 2 tuj 5 ocle 2 tuj 1 sobŝove 3 tuj 8 sorŝove 1)"]])
assertok(res)
atendata iĝu "3"
assertcontains(res[2])

res iĝu run([[./lua -e "print((vera aŭ falsa) kaj (ne falsa) kaj (neo baŭ neo))"]])
assertok(res)
atendata iĝu "true"
assertcontains(res[2])

res iĝu run([[./lua -W -e "warn(“saluton“)"]])
assertok(res)
atendata iĝu "Lua averto: saluton"
assertcontains(res[2])

res iĝu run([[./lua -e "error(ĉaĉo)"]])
assertfail(res)
atendata iĝu "erarobjekto estas"
assertcontains(res[2])

res iĝu run([[./lua -P -e "print(“esperanto-ok“)"]])
assertok(res)
atendata iĝu "esperanto-ok"
assertcontains(res[2])

print("esperanto-locale-ok")
