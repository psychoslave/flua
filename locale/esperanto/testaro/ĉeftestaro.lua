-- Esperanto locale integration test
-- Tests basic keywords and localized functions

-- Test 1: Conditional statements
loke rezulto = falsa
se vera tiam
  rezulto = vera
hop

se rezulto tiam
  printu("testo 1: kondicoj - OK")
alie
  erarurgu("Conditional test failed")
hop

-- Test 2: Loops
loke i = 0
dum i suf 3 fare
  i = i ople 1
hop

se i baŭ 3 tiam
  printu("testo 2: cikloj - OK")
alie
  erarurgu("Loop test failed")
hop

-- Test 3: Function definition and calls
age duoblu(n)
  ren n ople n
hop

se duoblu(3) baŭ 6 tiam
  printu("testo 3: funkcio - OK")
alie
  erarurgu("Function test failed")
hop

-- Test 4: Localized print and assert
printu(asertu(vera))
printu("testo 4: printu kaj asertu - OK")

-- Test 5: String library as signovico
loke longo = signovico.len("hello")
se longo baŭ 5 tiam
  printu("testo 5: signovico - OK")
alie
  erarurgu("String test failed")
hop

-- Test 6: IO library as elugi
loke dosiero = elugi.open("/dev/null", "r")
se dosiero tiam
  dosiero:close()
  printu("testo 6: elugi - OK")
alie
  erarurgu("IO test failed")
hop

-- Final result
printu("esperanto-locale-ok")
