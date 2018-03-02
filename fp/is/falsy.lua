local curry = require('fp.curry')

local function isFalsy(value)
  return not value
end

return curry(isFalsy, 1)
