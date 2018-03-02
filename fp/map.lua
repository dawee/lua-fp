local curry = require('fp.curry')
local iterate = require('fp.iterate')

local function createMapPredicate(predicate)
  local mapped = {}

  return function (value, key)
    mapped[key] = predicate(value)

    return mapped
  end
end

local function map(predicate, iteratee)
  local mapPredicate = createMapPredicate(predicate)

  return iterate(mapPredicate, iteratee)
end

return curry(map, 2)
