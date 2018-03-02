local curry = require('fp.curry')

local function isTrue(value)
  return value == true
end

return curry(isTrue, 1)
