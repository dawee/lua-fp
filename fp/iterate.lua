local loop = require('fp.core.loop')

local function iterate(predicate, iteratee, initial, shouldBreak)
  return iteratee and (type(iteratee) == 'table')
    and loop(predicate, iteratee, pairs(iteratee), shouldBreak, initial)
    or initial
end

return iterate
