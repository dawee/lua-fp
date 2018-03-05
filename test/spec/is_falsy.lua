local isFalsy = require('fp.is.falsy')

describe('[isBoolean]', function()
  it('should return true if value is falsy', function()
    assert.are.equal(isFalsy(false), true)
    assert.are.equal(isFalsy(nil), true)
  end)

  it('should return false if value is not falsy', function()
    assert.are.equal(isFalsy('str'), false)
    assert.are.equal(isFalsy(true), false)
  end)
end)
