local concat = require('fp.concat')

describe('[concat]', function()
  it('should concat two tables', function()
    local concatenated = concat({'a', 'b'}, {'c', 'd'})

    assert.same(concatenated, {'a', 'b', 'c', 'd'})
  end)
end)
