local clone = require('fp.clone')

describe('[clone]', function()
  it('should copy all keys from original', function()
    local original = {foo = 'bar', bar = 'baz'}
    local cloned = clone(original)

    assert.same(original, cloned)
  end)
end)
