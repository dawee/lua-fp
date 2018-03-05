local isTrue = require('fp.is.true')

describe('[isTrue]', function()
  it('should return true if value is string', function()
    assert.are.equal(isTrue(true), true)
  end)

  it('should return false if value is not string', function()
    assert.are.equal(isTrue(5), false)
    assert.are.equal(isTrue('foo'), false)
  end)
end)
