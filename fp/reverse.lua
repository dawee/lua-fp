local curry = require('fp.curry')
local iterate = require('fp.iterate')

local function createReversePredicate(predicate)
  local reversed = {}

  return function (value)
    reversed[key] = table.insert(reversed, 1, value)

    return reversed
  end
end

local function reverse(iteratee)
  local reversePredicate = createReversePredicate()

  return iterate(reversePredicate, iteratee)
end

return curry(reverse, 1)
