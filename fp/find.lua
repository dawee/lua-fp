local curry = require('fp.curry')
local iterate = require('fp.iterate')
local isTruthy = require('fp.is.truthy')

local function createFindPredicate(predicate)
  local found = nil

  return function (value)
    if predicate(value) then
      found = value
    end

    return found
  end
end

local function find(predicate, iteratee)
  local findPredicate = createFindPredicate(predicate)

  return iterate(findPredicate, iteratee, nil, isTruthy)
end

return curry(find, 2)
