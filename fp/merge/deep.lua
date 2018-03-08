local clone = require('fp.clone')
local curry = require('fp.curry')
local iterate = require('fp.iterate')
local isTable = require('fp.is.table')

local function mergeDeep(createPredicate)
  return function (base, values)
    local mergeDeepPredicate = createPredicate(base)

    return iterate(mergeDeepPredicate, values)
  end
end

local function createMergeDeepPredicate(base)
  local merged = clone(base)

  return function (value, key)
    if isTable(value) and merged[key] and isTable(merged[key]) then
      merged[key] = mergeDeep(createMergeDeepPredicate)(merged[key], value)
    else
      merged[key] = value
    end

    return merged
  end
end

return curry(mergeDeep(createMergeDeepPredicate), 2)
