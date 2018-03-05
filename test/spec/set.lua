local set = require('fp.set')

describe('[set]', function()
  it('should set a kay value pair', function()
    assert.same(set('foo', 'bar', {}), {foo = 'bar'})
  end)

  it('should return same table if key value pair is unchanged', function()
    local base = {foo = 'bar'}

    assert.equal(set('foo', 'bar', base), base)
  end)

  it('should set a nested key value pair using key table', function()
    assert.same(set({'foo', 'bar'}, 42, {}), {foo = {bar = 42}})
  end)
end)
