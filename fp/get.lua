local curry = require('fp.curry')
local iterate = require('fp.iterate')
local isTable = require('fp.is.table')
local isNil = require('fp.is.nil')

local function createGetPredicate(base)
  local pointer = base

  return function (key)
    if not isTable(pointer) then
      return nil
    end

    pointer = pointer[key]

    return pointer
  end
end

local function getUsingKeyTable(keyTable, base)
  local predicate = createGetPredicate(base)

  return iterate(predicate, keyTable, nil, isNil)
end

local function get(key, base)
  if isTable(key) then
    return getUsingKeyTable(key, base)
  end

  return base and base[key] or nil
end

return curry(get, 2)
