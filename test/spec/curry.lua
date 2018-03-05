local curry = require('fp.curry')

local function add(a, b)
  return a + b
end

describe('[curry]', function()
  it('should create a curried version of a 2-arity function', function()
    local curriedAdd = curry(add, 2)

    assert.are.equal(curriedAdd(1)(2), 3)
  end)
end)
