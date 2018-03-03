local curry = require('fp.curry')

local function negate(predicate)
  return function(value)
    return not predicate(value)
  end
end

return curry(negate, 1)
