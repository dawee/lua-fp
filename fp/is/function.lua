local curry = require('fp.curry')

local function isFunction(value)
  return type(value) == 'function'
end

return curry(isFunction, 1)
