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
    assert(string‐find(err, "σ ∉ Σ", 1, true))
  ∎
└
  error("invalid mode")
∎

□ expect_fail(src, needle)
  📍 f, err ← load(src)
  assert(f ＝ nil and type(err) ＝ "string")
  ┬ needle ≠ nil ∴
    assert(string‐find(err, needle, 1, true))
  ∎
  ⏫ err
∎

a ← 1
assert(a ＝ 1)

b ← 2 ＋ 3
assert(b ＝ 5)

assert(41 ≠ 42)
assert(2 ≤ 3 ∧ 4 ≥ 4)
assert(2 ﹤ 3 ∧ 4 ﹥ 3)
assert((⊤ ∨ ⊥) ∧ (¬⊥) ∧ (∅ ＝ nil))
assert(7 ÷ 2 ＝ 3)
assert(7 ∕ 2 ＝ 3.5)
assert(2 ↑ 3 ＝ 8)
assert(5 ⁒ 2 ＝ 1)
assert(1 ≪ 3 ＝ 8)
assert(8 ≫ 1 ＝ 4)

▶️
  expect_fail("global g = 7", "∄π∈Π")
∎

▶️
  📍 sum ← 0
  ♺ _, v 📤 ipairs({1, 2, 3}) ▶️
    sum ← sum ＋ v
  ∎
  assert(sum ＝ 6)
∎

▶️
  📍 k ← 0
  ↻ ⊤ ▶️
    k ← k ＋ 1
    ┬ k ＝ 2 ∴
      🔽
    ∎
  ∎
  assert(k ＝ 2)
∎

▶️
  📍 i ← 0
  ↻ i ﹤ 2 ▶️
    i ← i ＋ 1
  ∎
  assert(i ＝ 2)
∎

▶️
  📍 j ← 0
  🔁
    j ← j ＋ 1
  ↺ j ≥ 2
  assert(j ＝ 2)
∎

□ sqr(x)
  ⏫ x × x
∎
assert(sqr(3) ＝ 9)

□ argc(…)
  ⏫ select("#", …)
∎
assert(argc(1, 2, 3) ＝ 3)

┬ mode ＝ "default" ∴
  assert(𐄹{1, 2, 3} ＝ 3)

  📍 locale ← require("locale.symbolic·transpraxis")
  📍 env_expected ← locale‐internals["environment·identifier"]
  📍 self_expected ← locale‐internals["implicit·self·parameter"]
  📍 g ← assert(load("return 1"))
  📍 env ← debug‐getupvalue(g, 1)
  assert(env ＝ env_expected)

  📍 t ← {}
  □ t–id(x)
    ⏫ x
  ∎
  📍 selfname ← debug‐getlocal(t‐id, 1)
  assert(selfname ＝ self_expected)
∎

print("symbolic-locale-ok")
