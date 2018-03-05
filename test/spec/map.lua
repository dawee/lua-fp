local map = require('fp.map')

local function increment(value)
  return value + 1
end

describe('[map]', function()
  it('should call predicate for each table value and return a new table', function()
    assert.same(map(increment, {1, 2, 3, 4}), {2, 3, 4, 5})
  end)
end)
