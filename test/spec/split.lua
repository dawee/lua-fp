local split = require('fp.split')

describe('[split]', function()
  it('should split a string in a table using a string separator', function()
    assert.same(split('.', 'foo.bar'), {'foo', 'bar'})
  end)
end)
