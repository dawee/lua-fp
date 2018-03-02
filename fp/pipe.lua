local iterate = require('fp.iterate')

local function createPipePredicate(initial)
  local state = initial

  return function (func)
    state = func(state)

    return state
  end
end

local function pipe(...)
  local funcs = {...}

  return function (initial)
    local pipePredicate = createPipePredicate(initial)

    return iterate(pipePredicate, funcs, initial)
  end
end

return pipe
