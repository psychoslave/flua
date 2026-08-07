age ŝelcitigu(ĉeno)
  ren "'" ogle ĉeno.anstataŭigu(ĉenurgu(ĉeno) tuj "'" tuj [['"'"']]) ogle "'"
hop

age rulu(komando)
  loke eligo iĝu dromo.efemeranomo()
  loke komandaĵo iĝu komando ogle " > " ogle ŝelcitigu(eligo) ogle " 2>&1"
  loke konsidero iĝu dromo.plenumu(komandaĵo)
  loke dosiero iĝu asertu(eneligo.open(eligo tuj "r"))
  loke text iĝu dosiero.read(dosiero tuj "a")
  dosiero.close(dosiero)
  dromo.remove(eligo)
  ren { konsidero tuj text }
hop

age kontroluokon(res)
  se ne res[1] tiam
    erarurgu(res[2])
  hop
hop

age kontrolumison(res)
  se res[1] tiam
    erarurgu("atendita malsukceso")
  hop
hop

loke atendata iĝu ""

age kontroluenhavon(text)
  se ne ĉeno.find(text tuj atendata tuj 1 tuj vera) tiam
    erarurgu(text)
  hop
hop

loke res iĝu rulu([[./lua -e "se vera tiam printu(“se-konsidero“) alie printu(“no“) hop"]])
kontroluokon(res)
atendata iĝu "se-konsidero"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "loke n iĝu 0; dum n suf 2 fare n iĝu n ople 1 hop; printu(n)"]])
kontroluokon(res)
atendata iĝu "2"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "age duoblu(n) ren n ople n hop; printu(duoblu(2))"]])
kontroluokon(res)
atendata iĝu "4"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "por i el ipairs(ĉa1ĉo) fare printu(i) hop"]])
kontroluokon(res)
atendata iĝu "1"
kontroluenhavon(res[2])

-- `ĉaidentigiloĉo` atendite malsukcesas sen sintaksanalizilo-adapto: la fina `ĉo`
-- englutiĝas en la identigilan morfemon, do neniu ferm-morfemo de konstruilo
-- videblas por la analizilo. Spacigo (`ĉa identigilo ĉo`) ĝin malambiguigas.
res iĝu rulu([[./lua -e "loke identigilo iĝu 42; loke t iĝu ĉaidentigiloĉo; printu(t.identigilo)"]])
kontrolumison(res)
atendata iĝu "atendata"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "loke identigilo iĝu 42; loke t iĝu ĉa identigilo ĉo; printu(t[1])"]])
kontroluokon(res)
atendata iĝu "42"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "cikle printu(“esperanto-loop-konsidero“) ĝis vera"]])
kontroluokon(res)
atendata iĝu "esperanto-loop-konsidero"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "loke i iĝu 0; ::L:: i iĝu i ople 1; se i suf 2 tiam ŝalte L hop; printu(i)"]])
kontroluokon(res)
atendata iĝu "2"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "loke n iĝu 0; dum vera fare rompe hop; printu(“rompe-konsidero“)"]])
kontroluokon(res)
atendata iĝu "rompe-konsidero"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "loke t iĝu ĉa1ĉo; printu(ofle t tuj 7 okle 2 tuj 7 ozle 2 tuj 5 ocle 2 tuj 1 sobŝove 3 tuj 8 sorŝove 1)"]])
kontroluokon(res)
atendata iĝu "3"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "printu((vera aŭ falsa) kaj (ne falsa) kaj (neo baŭ neo))"]])
kontroluokon(res)
atendata iĝu "true"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -W -e "avertu(“saluton“)"]])
kontroluokon(res)
atendata iĝu "Lua averto: saluton"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "erarurgu(ĉaĉo)"]])
kontrolumison(res)
atendata iĝu "erarobjekto estas"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -P -e "printu(“esperanto-konsidero“)"]])
kontroluokon(res)
atendata iĝu "esperanto-konsidero"
kontroluenhavon(res[2])

printu("esperanto-locale-konsidero")
