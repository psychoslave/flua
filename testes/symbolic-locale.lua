local mode ← assert(arg[1], "missing mode")

if mode ＝ "default" then
  assert(type(_G) ＝ "table")
  assert(rawget(_G, "🌐") ＝ _G)
  do
    local f ← assert(load("z=7; return z"))
    assert(f() ＝ 7)
  end
elseif mode ＝ "plain" then
  assert(_G ＝ nil)
  do
    local f, err ← load("z=7")
    assert(f ＝ nil and type(err) ＝ "string")
    assert(string.find(err, "⚠ (σ ∉ Σ) ∧ Γ ⊬ ⟨…⇔…⟩", 1, true))
  end
else
  error("invalid mode")
end

a ← 1
assert(a ＝ 1)

b ← 2 ＋ 3
assert(b ＝ 5)

assert(41 ≠ 42)
assert(2 ≤ 3 and 4 ≥ 4)
assert(8 ÷ 2 ＝ 4)
assert(2 ↑ 3 ＝ 8)
assert(5 ％ 2 ＝ 1)

do
  local f, err ← load("local x =")
  assert(f ＝ nil and type(err) ＝ "string")
  assert(string.find(err, "⚠ (σ ∉ Σ) ∧ Γ ⊬ ⟨…⇔…⟩", 1, true))
end

print("symbolic-locale-ok")
