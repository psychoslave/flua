📍 mode ← assert(arg[1], "missing mode")

┬ mode ＝ "default" ∴
  assert(type(_G) ＝ "table")
  assert(rawget(_G, "🌐") ＝ _G)
  ▶️
    📍 f ← assert(load("z=7; ⏫ z"))
    assert(f() ＝ 7)
  ∎
├ mode ＝ "plain" ∴
  assert(_G ＝ nil)
  ▶️
    📍 f, err ← load("z=7")
    assert(f ＝ nil and type(err) ＝ "string")
    assert(string.find(err, "⚠", 1, true))
  ∎
└
  error("invalid mode")
∎

a ← 1
assert(a ＝ 1)

b ← 2 ＋ 3
assert(b ＝ 5)

assert(41 ≠ 42)
assert(2 ≤ 3 ∧ 4 ≥ 4)
assert(8 ÷ 2 ＝ 4)
assert(2 ↑ 3 ＝ 8)
assert(5 ％ 2 ＝ 1)

▶️
  📍 f, err ← load("📍 x =")
  assert(f ＝ nil and type(err) ＝ "string")
  assert(string.find(err, "⚠", 1, true))
∎

▶️
  📍 sum ← 0
  ∀ _, v 📤 ipairs({1, 2, 3}) ▶️
    sum ← sum ＋ v
  ∎
  assert(sum ＝ 6)
∎

▶️
  📍 i ← 0
  ↺ i ‹ 2 ▶️
    i ← i ＋ 1
  ∎
  assert(i ＝ 2)
∎

▶️
  📍 j ← 0
  🔁
    j ← j ＋ 1
  ↻ j ≥ 2
  assert(j ＝ 2)
∎

ƒ sqr(x)
  ⏫ x × x
∎
assert(sqr(3) ＝ 9)

print("symbolic-locale-ok")
