local curry = require('fp.curry')
local iterate = require('fp.iterate')

local function createEachPredicate(predicate)
  return function (value)
    return predicate(value)
  end
end

local function each(predicate, iteratee)
  local eachPredicate = createEachPredicate(predicate)

  return iterate(eachPredicate, iteratee)
end

return curry(each, 2)
