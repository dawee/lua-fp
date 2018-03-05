stds.fp = {
  globals = {
    'unpack'
  }
}

std = 'min+fp'
ignore = {'212', './test/script/pretest.lua'}
files['test'] = {std = '+busted'}
exclude_files = {'.rocks/*', 'lua_install_travis_folder'}
