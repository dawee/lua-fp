local function loop(predicate, static, next, shouldBreak)
  local key, value, state

  repeat
    key, value = next(static, key)

    if not (key == nil) then
      state = predicate(value, key)
    end
  until (key == nil) or (shouldBreak and shouldBreak(state))

  return state
end

return loop
