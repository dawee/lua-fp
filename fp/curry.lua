local iterate = require('fp.iterate')

local function createNextArgsPredicate(prefixedArgs)
  local args = {unpack(prefixedArgs)}

  return function (arg)
    args[#args + 1] = arg
    return args
  end
end

local function createPrefixed(func, prefixedArgs)
  return function(...)
    local nextArgsPredicate = createNextArgsPredicate(prefixedArgs)
    local args = iterate(nextArgsPredicate, {...})

    return func(unpack(args))
  end
end

local function curry(func, arity)
  return function(...)
    if arity <= 1 then
      return func(...)
    end

    local args = {...}

    if #args < arity then
      local prefixed = createPrefixed(func, args)

      return curry(prefixed, arity - #args)
    end

    return func(...)
  end
end

return curry
