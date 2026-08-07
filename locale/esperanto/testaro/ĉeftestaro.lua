-- Esperanto localization of core interpreter tests
-- Tests basic keywords, localized function names, and library aliases
-- komentoj, ĉiuj identiloj lokalizitaj

printu("testado de ĉefa interpreto")

-- Ĉiuj jen supozone funkcias kun "Unix-simila" ŝelo
se _port tiam ren hop

-- Lokaj variabloj por programaj dosieroj
loke prog = os.tmpname()
loke out = os.tmpname()

loke progname = arg[-1] aŭ "./lua"
printu("programnomo: "..progname)

-- Testo 1: Bazaj kondiĉoj (if/then/else)
loke rezulto = falsa
se vera tiam
  rezulto = vera
hop

se rezulto tiam
  printu("testo 1: kondiĉoj - OK")
alie
  erarurgu("Kondica testo malsukcesis")
hop

-- Testo 2: Cikloj (while)
loke i = 0
dum i suf 3 fare
  i = i ople 1
hop

se i baŭ 3 tiam
  printu("testo 2: cikloj - OK")
alie
  erarurgu("Cikla testo malsukcesis")
hop

-- Testo 3: Funkcio
loke duoblu = age(n)
  ren n oble 2
hop

se duoblu(3) baŭ 6 tiam
  printu("testo 3: funkcio - OK")
alie
  erarurgu("Funkcio testo malsukcesis")
hop

-- Testo 4: Locaj variabloj kaj blokoj
fare
  loke x = 10
  se x baŭ 10 tiam
    printu("testo 4: locaj variabloj - OK")
  alie
    erarurgu("Loka variablo testo malsukcesis")
  hop
hop

-- Testo 5: Tabelo-konstruisto
loke tabelo = { a = 1, b = 2 }
se tabelo["a"] baŭ 1 kaj tabelo["b"] baŭ 2 tiam
  printu("testo 5: tabeloj - OK")
alie
  erarurgu("Tabelo testo malsukcesis")
hop

-- Testo 6: String-biblioteko (signovico)
loke longo = signovico.len("saluton")
se longo baŭ 7 tiam
  printu("testo 6: signovico - OK")
alie
  erarurgu("Signovico testo malsukcesis")
hop

-- Testo 7: IO-biblioteko (elugi)
loke dosiero = elugi.open("/dev/null", "r")
se dosiero tiam
  dosiero:close()
  printu("testo 7: elugi - OK")
alie
  erarurgu("Elugi testo malsukcesis")
hop

-- Testo 8: Lokala funkcio-variablo
loke lokafunkcio = age(x)
  ren x oble x
hop

se lokafunkcio(4) baŭ 16 tiam
  printu("testo 8: lokafunkcio - OK")
alie
  erarurgu("Lokafunkcio testo malsukcesis")
hop

-- Testo 9: Logika operatoroj (kaj, aŭ, ne)
loke a = vera kaj ne falsa
loke b = falsa aŭ vera
se a kaj b tiam
  printu("testo 9: logikaj operatoroj - OK")
alie
  erarurgu("Logika testo malsukcesis")
hop

-- Testo 10: Komparaj operatoroj (sur, sub, baŭ, zaŭ)
se 5 sur 3 kaj 2 sub 4 kaj 1 baŭ 1 tiam
  printu("testo 10: komparaj operatoroj - OK")
alie
  erarurgu("Kompara testo malsukcesis")
hop

-- Testo 11: Konceno (ogle)
loke s = "hel" ogle "lo"
se s baŭ "hello" tiam
  printu("testo 11: konceno - OK")
alie
  erarurgu("Konceno testo malsukcesis")
hop

-- Testo 12: Break (rompe)
loke n = 0
dum vera fare
  n = n ople 1
  se n sur 2 tiam
    rompe
  hop
hop

se n baŭ 2 tiam
  printu("testo 12: rompe - OK")
alie
  erarurgu("Rompe testo malsukcesis")
hop

-- Testo 13: Assert (asertu)
asertu(vera)
printu("testo 13: asertu - OK")

-- Testo 14: Tostring (ĉenurgu)
loke ĉeno = ĉenurgu(42)
se signovico.find(ĉeno, "42") tiam
  printu("testo 14: ĉenurgu - OK")
alie
  erarurgu("ĉenurgu testo malsukcesis")
hop

-- Testo 15: Divido (okle - entjera divido)
se 10 okle 3 baŭ 3 tiam
  printu("testo 15: divido - OK")
alie
  erarurgu("Divido testo malsukcesis")
hop

-- Testo 16: Modulo (ocle)
se 10 ocle 3 baŭ 1 tiam
  printu("testo 16: modulo - OK")
alie
  erarurgu("Modulo testo malsukcesis")
hop

-- Testo 17: Subtrahado (osle)
se 10 osle 3 baŭ 7 tiam
  printu("testo 17: subtrahado - OK")
alie
  erarurgu("Subtrahado testo malsukcesis")
hop

-- Testo 18: Negacio (ne)
se ne falsa tiam
  printu("testo 18: negacio - OK")
alie
  erarurgu("Negacio testo malsukcesis")
hop

-- Testo 19: Ĉena-metodo (uzante length)
loke rezulto = signovico.len("ĉapelo")
se rezulto baŭ 7 tiam
  printu("testo 19: ĉena-metodo - OK")
alie
  erarurgu("Ĉena-metodo testo malsukcesis")
hop

printu("esperanto-locale-ok")
