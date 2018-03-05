local is = require('fp.is')

describe('[is]', function()
  it('should return true if values are equals', function()
    assert.are.equal(is(false, false), true)
    assert.are.equal(is(true, true), true)
  end)

  it('should return false if value are not equals', function()
    assert.are.equal(is('foo', 'bar'), false)
    assert.are.equal(is({}, {}), false)
  end)
end)
