local clone = require('fp.clone')
local curry = require('fp.curry')
local iterate = require('fp.iterate')

local function createMergePredicate(base)
  local merged = clone(base)

  return function (value, key)
    merged[key] = value

    return merged
  end
end

local function merge(base, values)
  local mergePredicate = createMergePredicate(base)

  return iterate(mergePredicate, values)
end

return curry(merge, 2)
