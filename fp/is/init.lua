local curry = require('fp.curry')

local function is(first, second)
  return first == second
end

return curry(is, 2)
