local curry = require('fp.curry')

local function isNumber(value)
  return type(value) == 'number'
end

return curry(isNumber, 1)
