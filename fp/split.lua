local curry = require('fp.curry')
local loop = require('fp.core.loop')

local function createSplitPredicate(separator, pattern)
  local splitted = {}

  return function (__, substr)
    splitted[#splitted + 1] = string.gsub(substr, pattern, '')
    return splitted
  end
end

local function split(separator, str)
  local pattern = '%' .. separator
  local next = string.gmatch(separator .. str, pattern .. '[^' .. pattern .. ']*')
  local splitPredicate = createSplitPredicate(separator, pattern)

  return loop(splitPredicate, nil, next, nil, {})
end

return curry(split, 2)
