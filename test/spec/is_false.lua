local isFalse = require('fp.is.false')

describe('[isBoolean]', function()
  it('should return true if value is false', function()
    assert.are.equal(isFalse(false), true)
  end)

  it('should return false if value is not false', function()
    assert.are.equal(isFalse('str'), false)
    assert.are.equal(isFalse(true), false)
  end)
end)
