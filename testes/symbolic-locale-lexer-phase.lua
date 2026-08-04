local function expect_fail(src, needle)
  local f, err = load(src)
  assert(f == nil and type(err) == "string")
  if needle ~= nil then
    assert(string.find(err, needle, 1, true))
  end
end

-- These localized delimiters/quotes are cataloged in the locale table but not
-- yet employed by the lexer tokenization path.
expect_fail("local x = 【1 + 2】")
expect_fail("local t = {1}; assert(t⟦1⟧ == 1)")
expect_fail("local t = ⁅a = 1⁆")
expect_fail("local t = {1☙2}")
expect_fail("local t = {1☙}")
expect_fail("local t = {☙2,3}")
expect_fail("local a = 1❦ local b = 2")
expect_fail("❦print(1)❦print(2)❦")
expect_fail("print(1)❦")
expect_fail("local s = ＂x＂")
expect_fail("local s = ＇x＇")

print("symbolic-lexer-phase-ok")
