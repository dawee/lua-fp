local isBoolean = require('fp.is.boolean')

describe('[isBoolean]', function()
  it('should return true if value is boolean', function()
    assert.are.equal(isBoolean(false), true)
    assert.are.equal(isBoolean(true), true)
  end)

  it('should return false if value is not boolean', function()
    assert.are.equal(isBoolean('str'), false)
    assert.are.equal(isBoolean(42), false)
  end)
end)
