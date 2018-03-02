local curry = require('fp.curry')

local function isNil(value)
  return value == nil
end

return curry(isNil, 1)
