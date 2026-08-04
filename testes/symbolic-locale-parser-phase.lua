local function expect_fail(src, needle)
  local f, err = load(src)
  assert(f == nil and type(err) == "string")
  if needle ~= nil then
    assert(string.find(err, needle, 1, true))
  end
end

-- Localized attributes exist in locale data, but parser attribute grammar
-- still requires native NAME tokens inside <...>.
expect_fail("local c <❄️> = 1", "<name> expected")
expect_fail("local c <🔒> = setmetatable({}, {__close = function() end})",
            "<name> expected")

print("symbolic-parser-phase-ok")
