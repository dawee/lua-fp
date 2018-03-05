local pipe = require('fp.pipe')

local function add(a)
  return function (b)
    return a + b
  end
end

local function mul(a)
  return function(b)
    return a * b
  end
end

describe('[pipe]', function()
  it('should apply state to every given function and return transformed state', function()
    assert.are.equal(pipe(add(1), mul(2))(20), 42)
  end)
end)
