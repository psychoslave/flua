age ŝelcitigu je ĉeno ek 
  ren "'" ogle ĉeno.anstataŭigu je ĉenurgu je ĉeno ek  tuj "'" tuj [['"'"']] ek  ogle "'"
hop

age rulu je komando ek 
  loke eligo iĝu dromo.efemeranomo je  ek 
  loke komandaĵo iĝu komando ogle " > " ogle ŝelcitigu je eligo ek  ogle " 2>&1"
  loke konsidero iĝu dromo.plenumu je komandaĵo ek 
  loke dosiero iĝu asertu je eneligo.open je eligo tuj "r"))
  loke text iĝu dosiero.read je dosiero tuj "a" ek 
  dosiero.close je dosiero ek 
  dromo.remove je eligo ek 
  ren { konsidero tuj text }
hop

age kontroluokon je res ek 
  se ne res[1] tiam
    erarurgu je res[2] ek 
  hop
hop

age kontrolumison je res ek 
  se res[1] tiam
    erarurgu je "atendita malsukceso" ek 
  hop
hop

loke atendata iĝu ""

age kontroluenhavon je text ek 
  se ne ĉeno.find je text tuj atendata tuj 1 tuj vera ek  tiam
    erarurgu je text ek 
  hop
hop

loke res iĝu rulu je [[./lua -e "se vera tiam printu je “se-konsidero“ ek  alie printu je “no“ ek  hop"]] ek 
kontroluokon je res ek 
atendata iĝu "se-konsidero"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -e "loke n iĝu 0; dum n suf 2 fare n iĝu n ople 1 hop; printu je n ek "]] ek 
kontroluokon je res ek 
atendata iĝu "2"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -e "age duoblu je n ek  ren n ople n hop; printu je duoblu je 2))"]] ek 
kontroluokon je res ek 
atendata iĝu "4"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -e "por i el ipairs je ĉa1ĉo ek  fare printu je i ek  hop"]] ek 
kontroluokon je res ek 
atendata iĝu "1"
kontroluenhavon je res[2] ek 

-- `ĉaidentigiloĉo` atendite malsukcesas sen sintaksanalizilo-adapto: la fina `ĉo`
-- englutiĝas en la identigilan morfemon, do neniu ferm-morfemo de konstruilo
-- videblas por la analizilo. Spacigo  je `ĉa identigilo ĉo` ek  ĝin malambiguigas.
res iĝu rulu je [[./lua -e "loke identigilo iĝu 42; loke t iĝu ĉaidentigiloĉo; printu je t.identigilo ek "]] ek 
kontrolumison je res ek 
atendata iĝu "atendata"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -e "loke identigilo iĝu 42; loke t iĝu ĉa identigilo ĉo; printu je t[1] ek "]] ek 
kontroluokon je res ek 
atendata iĝu "42"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -e "cikle printu je “esperanto-loop-konsidero“ ek  ĝis vera"]] ek 
kontroluokon je res ek 
atendata iĝu "esperanto-loop-konsidero"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -e "loke i iĝu 0; ::L:: i iĝu i ople 1; se i suf 2 tiam ŝalte L hop; printu je i ek "]] ek 
kontroluokon je res ek 
atendata iĝu "2"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -e "loke n iĝu 0; dum vera fare rompe hop; printu je “rompe-konsidero“ ek "]] ek 
kontroluokon je res ek 
atendata iĝu "rompe-konsidero"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -e "loke t iĝu ĉa1ĉo; printu je ofle t tuj 7 okle 2 tuj 7 ozle 2 tuj 5 ocle 2 tuj 1 sobŝove 3 tuj 8 sorŝove 1 ek "]] ek 
kontroluokon je res ek 
atendata iĝu "3"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -e "printu((vera aŭ falsa ek  kaj  je ne falsa ek  kaj  je neo baŭ neo))"]] ek 
kontroluokon je res ek 
atendata iĝu "true"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -W -e "avertu je “saluton“ ek "]] ek 
kontroluokon je res ek 
atendata iĝu "Lua averto: saluton"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -e "erarurgu je ĉaĉo ek "]] ek 
kontrolumison je res ek 
atendata iĝu "erarobjekto estas"
kontroluenhavon je res[2] ek 

res iĝu rulu je [[./lua -P -e "printu je “esperanto-konsidero“ ek "]] ek 
kontroluokon je res ek 
atendata iĝu "esperanto-konsidero"
kontroluenhavon je res[2] ek 

printu je "bone" ek
