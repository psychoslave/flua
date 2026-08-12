local function expect_ok(src)
  local f, err = load(src)
  assert(f ~= nil and err == nil)
end

-- Symbolic identifiers are accepted in attribute positions.
expect_ok("local c <❄️> = 1")
expect_ok("local c <🔒> = setmetatable({}, {__close = function() end})")

print("symbolic-parser-phase-ok")
