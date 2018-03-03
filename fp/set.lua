local merge = require('fp.merge')
local curry = require('fp.curry')
local isTable = require('fp.is.table')

local function setUsingTableKey(keyTable, value, base, index)
  local subTable = base or {}
  local key = keyTable[index]

  if index == #keyTable then
    return merge(subTable, {[key] = value})
  end

  return merge(subTable, {
    [key] = setUsingTableKey(keyTable, value, subTable[key], index + 1)
  })
end

local function set(key, value, base)
  if isTable(key) then
    return setUsingTableKey(key, value, base, 1)
  end

  if base and base[key] == value then
    return base
  end

  return merge(base, {[key] = value})
end

return curry(set, 3)
