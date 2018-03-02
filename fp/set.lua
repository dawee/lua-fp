local merge = require('fp.merge')
local curry = require('fp.curry')

local function set(key, value, base)
  if base and base[key] == value then
    return base
  end

  return merge(base, {[key] = value})
end

return curry(set, 3)
