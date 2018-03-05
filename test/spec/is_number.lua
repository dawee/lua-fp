local isNumber = require('fp.is.number')

describe('[isNumber]', function()
  it('should return true if value is number', function()
    assert.are.equal(isNumber(5), true)
  end)

  it('should return false if value is not number', function()
    assert.are.equal(isNumber('str'), false)
    assert.are.equal(isNumber(true), false)
  end)
end)
