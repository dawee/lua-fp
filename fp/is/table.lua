local curry = require('fp.curry')

local function isTable(value)
  return type(value) == 'table'
end

return curry(isTable, 1)
