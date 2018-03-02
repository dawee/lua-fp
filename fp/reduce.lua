local curry = require('fp.curry')
local iterate = require('fp.iterate')

local function createReducePredicate(predicate, initial)
  local state = initial

  return function (value)
    state = predicate(value, state)

    return state
  end
end

local function reduce(predicate, initial, iteratee)
  local reducePredicate = createReducePredicate(predicate, initial)

  return iterate(reducePredicate, iteratee, initial)
end

return curry(reduce, 3)
