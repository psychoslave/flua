-- laŭvorta traduko de ./teste/main.lua
age ŝelcitigu(ĉeno)
  ren "'" ogle ĉeno.anstataŭigu(ĉenurgu(ĉeno), "'", [['"'"']]) ogle "'"
hop

age rulu(komando)
  loke eligo iĝu dromo.efemeranomo()
  loke komandaĵo iĝu komando ogle " > " ogle ŝelcitigu(eligo) ogle " 2>&1"
  loke konsidero iĝu dromo.plenumu(komandaĵo)
  loke dosiero iĝu asertu(eneligo.ovru(eligo, "r"))
  eneligo.enigu(dosiero)
  loke teksto iĝu eneligo.legu("*a")
  eneligo.fermu(dosiero)
  dromo.forigu(eligo)
  ren { konsidero, teksto }
hop

age rulkontrolu(rezulto)
  se ne rezulto[1] tiam
    erarurgu(rezulto[2])
  hop
hop

age misendakontrolu(rezulto)
  se rezulto[1] tiam
    erarurgu("atendita malsukceso")
  hop
hop

loke atendato iĝu ""

age enhavkontrolu(teksto)
  se teksto baŭ neo tiam
    erarurgu("mankas eligo")
  hop
  se ne ĉeno.trovu(teksto, atendato, 1, vera) tiam
    erarurgu(teksto)
  hop
hop

loke rezulto iĝu rulu([[./lua -e "se vera tiam printu(“se-konsidero“) alie printu(“alie-konsidero“) hop"]])
rulkontrolu(rezulto)
atendato iĝu "se-konsidero"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -e "loke n iĝu 0; dum n suf 2 fare n iĝu n ople 1 hop; printu(n)"]])
rulkontrolu(rezulto)
atendato iĝu "2"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -e "age duoblu(n) ren n ople n hop; printu(duoblu(2))"]])
rulkontrolu(rezulto)
atendato iĝu "4"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -e "por i el ipairs({1}) fare printu(i) hop"]])
rulkontrolu(rezulto)
atendato iĝu "1"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -e "loke identigilo iĝu 42; loke t iĝu {identigilo}; printu(t[1])"]])
rulkontrolu(rezulto)
atendato iĝu "42"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -e "cikle printu(“esperanto-cikle-konsidero“) ĝis vera"]])
rulkontrolu(rezulto)
atendato iĝu "esperanto-cikle-konsidero"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -e "loke i iĝu 0; ::L:: i iĝu i ople 1; se i suf 2 tiam ŝalte L hop; printu(i)"]])
rulkontrolu(rezulto)
atendato iĝu "2"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -e "loke n iĝu 0; dum vera fare rompe hop; printu(“rompe-konsidero“)"]])
rulkontrolu(rezulto)
atendato iĝu "rompe-konsidero"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -e "loke t iĝu {1,2,3}; printu(ofle t, 7 okle 2, 7 ozle 2, 5 ocle 2, 1 sobŝove 3, 8 sorŝove 1)"]])
rulkontrolu(rezulto)
atendato iĝu "3"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -e "printu((vera aŭ falsa) kaj (ne falsa) kaj (neo baŭ neo))"]])
rulkontrolu(rezulto)
atendato iĝu "vera"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -W -e "avertu(“saluton“)"]])
rulkontrolu(rezulto)
atendato iĝu "Lua averto: saluton"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -e "erarurgu({})"]])
misendakontrolu(rezulto)
atendato iĝu "erarobjekto estas"
enhavkontrolu(rezulto[2])

rezulto iĝu rulu([[./lua -P -e "printu(“esperanto-konsidero“)"]])
rulkontrolu(rezulto)
atendato iĝu "esperanto-konsidero"
enhavkontrolu(rezulto[2])

printu("esperanto-lokalo-konsidero")
