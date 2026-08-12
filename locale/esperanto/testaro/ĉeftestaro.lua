-- laŭvorta traduko de ./teste/main.lua
age ŝelcitigu(ĉeno)
  ren "'" ogle ĉeno.anstataŭigu(ĉenurgu(ĉeno), "'", [['"'"']]) ogle "'"
hop

age rulu(komando)
  loke eligo iĝu dromo.efemeranomo()
  loke komandaĵo iĝu komando ogle " > " ogle ŝelcitigu(eligo) ogle " 2>&1"
  loke konsidero iĝu dromo.plenumu(komandaĵo)
  loke dosiero iĝu asertu(elugi.ovru(eligo, "r"))
  elugi.enigu(dosiero)
  loke teksto iĝu elugi.legu("*a")
  elugi.fermu(dosiero)
  dromo.forigu(eligo)
  ren { konsidero, teksto }
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

age kontroluenhavon(teksto)
  se teksto baŭ neo tiam
    erarurgu("mankas eligo")
  hop
  se ne signovico.trovu(teksto, atendata, 1, vera) tiam
    erarurgu(teksto)
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

res iĝu rulu([[./lua -e "por i el ipairs({1}) fare printu(i) hop"]])
kontroluokon(res)
atendata iĝu "1"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "loke identigilo iĝu 42; loke t iĝu {identigilo}; printu(t[1])"]])
kontroluokon(res)
atendata iĝu "42"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "cikle printu(“esperanto-cikle-konsidero“) ĝis vera"]])
kontroluokon(res)
atendata iĝu "esperanto-cikle-konsidero"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "loke i iĝu 0; ::L:: i iĝu i ople 1; se i suf 2 tiam ŝalte L hop; printu(i)"]])
kontroluokon(res)
atendata iĝu "2"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "loke n iĝu 0; dum vera fare rompe hop; printu(“rompe-konsidero“)"]])
kontroluokon(res)
atendata iĝu "rompe-konsidero"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -e "loke t iĝu {1,2,3}; printu(ofle t, 7 okle 2, 7 ozle 2, 5 ocle 2, 1 sobŝove 3, 8 sorŝove 1)"]])
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

res iĝu rulu([[./lua -e "erarurgu({})"]])
kontrolumison(res)
atendata iĝu "erarobjekto estas"
kontroluenhavon(res[2])

res iĝu rulu([[./lua -P -e "printu(“esperanto-konsidero“)"]])
kontroluokon(res)
atendata iĝu "esperanto-konsidero"
kontroluenhavon(res[2])

printu("esperanto-lokalo-konsidero")
