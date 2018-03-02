local curry = require('fp.curry')

local function isFalse(value)
  return value == false
end

return curry(isFalse, 1)
