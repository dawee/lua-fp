local each = require('fp.each')

describe('[each]', function()
  it('should call predicate for each table value', function()
    local counter = 0
    local function addToCounter(value)
      counter = counter + value
    end

    each(addToCounter, {1, 2, 3})

    assert.are.equal(counter, 6)
  end)
end)
