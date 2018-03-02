local curry = require('fp.curry')
local isFalsy = require('fp.is.falsy')

local function isTruthy(value)
  return not isFalsy(value)
end

return curry(isTruthy, 1)
