local curry = require('fp.curry')

local function isString(value)
  return type(value) == 'string'
end

return curry(isString, 1)
