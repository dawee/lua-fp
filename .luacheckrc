stds.fp = {
  globals = {
    'unpack'
  }
}

std = 'min+fp'
ignore = {'212'}
files['test'] = {std = '+busted'}
exclude_files = {'.rocks/*', 'lua_install_travis_folder'}
