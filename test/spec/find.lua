local find = require('fp.find')

local function startsWith(start)
  return function (value)
    return (type(value) == 'string') and string.sub(value, 1, string.len(start)) == start
  end
end

describe('[find]', function()
  it('should use a predicate function to return searched element', function()
    local found = find(startsWith('foo'), {1, nil, 'bar', 'foobar', true})

    assert.are.equal(found, 'foobar')
  end)
end)
