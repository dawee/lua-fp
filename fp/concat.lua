local curry = require('fp.curry')
local iterate = require('fp.iterate')

local function createConcatPredicate(base)
  local concatenated = {unpack(base)}

  return function (value)
    concatenated[#concatenated + 1] = value

    return concatenated
  end
end

local function concat(base, iteratee)
  local concatPredicate = createConcatPredicate(base)

  return iterate(concatPredicate, iteratee)
end

return curry(concat, 2)
