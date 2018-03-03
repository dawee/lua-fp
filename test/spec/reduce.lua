local reduce = require('fp.reduce')

describe('[reduce]', function()
  it('should use reduce to sum a list of integers', function()
    local sum = reduce(function (a, b) return a + b end, 0, {1, 2, 3})
     assert.are.equal(sum, 6)
  end)
end)
