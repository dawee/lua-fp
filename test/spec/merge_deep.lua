local mergeDeep = require('fp.merge.deep')

describe('[mergeDeep]', function()
  it('should merge 2 tables with nested tables', function()
    local merged = mergeDeep(
      {
        foo = 'bar',
        bar = {
          baz = 42,
          foobar = {0, 0, 0, 4, 5}
        }
      },
      {
        foobar = 'foo',
        bar = {
          foo = 'bar',
          foobar = {1, 2, 3}
        }
      }
    )
    assert.same(merged, {
      foo = 'bar',
      foobar = 'foo',
      bar = {
        baz = 42,
        foo = 'bar',
        foobar = {1, 2, 3, 4, 5}
      }
    })
  end)
end)
