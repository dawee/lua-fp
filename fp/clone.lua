local curry = require('fp.curry')
local iterate = require('fp.iterate')

local function createClonePredicate()
  local cloned = {}

  return function (value, key)
    cloned[key] = value

    return cloned
  end
end

local function clone(base)
  local clonePredicate = createClonePredicate()

  return iterate(clonePredicate, base)
end

return curry(clone, 1)
