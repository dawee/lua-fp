local merge = require('fp.merge')

describe('[merge]', function()
  it('should merge 2 tables', function()
    local merged = merge({foo = 'bar', bar = 'baz'}, {bar = 42, foobar = 'foo'})
    assert.same(merged, {foo = 'bar', bar = 42, foobar = 'foo'})
  end)
end)
