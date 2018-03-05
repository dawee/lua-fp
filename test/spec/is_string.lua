local isString = require('fp.is.string')

describe('[isString]', function()
  it('should return true if value is string', function()
    assert.are.equal(isString('foo'), true)
  end)

  it('should return false if value is not string', function()
    assert.are.equal(isString(5), false)
    assert.are.equal(isString(true), false)
  end)
end)
