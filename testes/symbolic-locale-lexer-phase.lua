local function expect_fail(src, needle)
  local f, err = load(src)
  assert(f == nil and type(err) == "string")
  if needle ~= nil then
    assert(string.find(err, needle, 1, true))
  end
end

local function expect_ok(src)
  local f, err = load(src)
  assert(f ~= nil, err)
end

local locale = require("locale.symbolic·transpraxis")
local delimiters = assert(locale.delimiters)

local expected = {
  ["expression·grouping·opening"] = "【",
  ["expression·grouping·closing"] = "】",
  ["index·opening"] = "⟦",
  ["index·closing"] = "⟧",
  ["constructor·opening"] = "⁅",
  ["constructor·closing"] = "⁆",
  ["element·separator"] = "☙",
  ["statement·separator"] = "❦",
  ["string·delimiter"] = "＂",
  ["string·delimiter·alternate"] = "＇",
}

for k, v in pairs(expected) do
  assert(delimiters[k] == v)
end
assert(delimiters["string·delimiter"] ~= delimiters["string·delimiter·alternate"])

-- Localized delimiters/quotes should now lex and parse.
expect_ok("local x = 【1 + 2】")
expect_ok("local t = ⁅1⁆; assert(t⟦1⟧ == 1)")
expect_ok("local t = ⁅a = 1⁆")
expect_ok("local t = ⁅1☙2⁆")
expect_ok("local t = ⁅1☙⁆")
expect_fail("local t = {☙2,3}")
expect_ok("local a = 1❦ local b = 2")
expect_ok("❦print(1)❦print(2)❦")
expect_ok("print(1)❦")
expect_ok("local s = ＂x＂")
expect_ok("local s = ＇x＇")

print("symbolic-lexer-phase-ok")
