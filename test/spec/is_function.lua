local isFunction = require('fp.is.function')

describe('[isFunction]', function()
  it('should return true if value is function', function()
    assert.are.equal(isFunction(function () end), true)
  end)

  it('should return false if value is not function', function()
    assert.are.equal(isFunction('str'), false)
    assert.are.equal(isFunction(true), false)
  end)
end)
