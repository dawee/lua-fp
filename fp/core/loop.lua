local function loop(predicate, static, next, shouldBreak, state, lastKey)
  local key, value = next(static, lastKey)

  if key == nil then
    return state
  end

  local nextState = predicate(value, key)

  if shouldBreak and shouldBreak(nextState) then
    return nextState
  end

  return loop(predicate, static, next, shouldBreak, nextState, key)
end

return loop
