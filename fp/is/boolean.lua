local curry = require('fp.curry')

local function isBoolean(value)
  return type(value) == 'boolean'
end

return curry(isBoolean, 1)
