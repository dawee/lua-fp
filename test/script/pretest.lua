local path = require('pl.path')
local lfs = require('lfs')

local generatedTestPath = path.join(path.currentdir(), 'test', 'spec', 'require.lua')
local data = 'describe(\'require\', function ()'

local function walk(dir, name, mod)
  if (name == '.') or (name == '..') then
    return
  end

  local fullPath = path.join(dir, name)

  if path.isdir(fullPath) then
    for sub in lfs.dir(fullPath) do
      local basename, ext = path.splitext(sub)

      walk(fullPath, sub, mod .. '.' .. basename)
    end
  else
    local basename, ext = path.splitext(name)

    if ext == '.lua' then
      data = data .. '\n'
        .. '  it(\'should require ' .. mod .. '\', function ()\n'
        .. '    require(\'' .. mod .. '\')\n'
        .. '  end)\n'
    end
  end
end

walk(path.currentdir(), 'fp', 'fp')

data = data .. 'end)\n'

local file = io.open(generatedTestPath, 'w')

io.output(file)
io.write(data)
io.close(file)
