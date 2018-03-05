local negate = require('fp.negate')

local function greaterThanEqual(base)
  return function (value)
    return value >= base
  end
end

describe('[negate]', function()
  it('should return the negated version of the predicate returned value', function()
    local lowerThan10 = negate(greaterThanEqual(10))

    assert.are.equal(lowerThan10(9), true)
    assert.are.equal(lowerThan10(10), false)
  end)
end)
