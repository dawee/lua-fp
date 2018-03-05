local get = require('fp.get')

describe('[get]', function()
  it('should get value using key', function()
    local value = get('foo', {foo = 42})

    assert.are.equal(value, 42)
  end)

  it('should get nested value using key table', function()
    local value = get({'foo', 'bar'}, {foo = {bar = 42}})

    assert.are.equal(value, 42)
  end)

  it('should return nil if nested table does not exist', function()
    local value = get({'foo', 'bar'}, {foo = nil})

    assert.are.equal(value, nil)
  end)

  it('should return nil if nested value does not exist', function()
    local value = get({'foo', 'bar'}, {foo = {}})

    assert.are.equal(value, nil)
  end)
end)
