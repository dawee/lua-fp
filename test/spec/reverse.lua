local reverse = require('fp.reverse')

describe('[reverse]', function()
  it('should return a new table with reversed order', function()
    assert.same(reverse({1, 2, 3, 4}), {4, 3, 2, 1})
  end)
end)
