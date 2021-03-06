sources := $(shell find fp/ -type f -name '*.lua')

ifeq ($(env), travis)
root=/home/travis/build/dawee/lua-fp
else
root=.
LUA_VERSION=5.3
endif

# http://leafo.net/guides/customizing-the-luarocks-tree.html
export LUA_PATH := ${root}/?.lua;$(LUA_PATH)
export LUA_PATH := ${root}/?/init.lua;$(LUA_PATH)
export LUA_PATH := ${root}/.rocks/share/lua/${LUA_VERSION}/?.lua;$(LUA_PATH)
export LUA_PATH := ${root}/.rocks/share/lua/${LUA_VERSION}/?/init.lua;$(LUA_PATH)
export LUA_CPATH := ${root}/.rocks/lib/lua/${LUA_VERSION}/?.so$(LUA_CPATH)

.rocks:
	@luarocks install --tree .rocks busted
	@luarocks install --tree .rocks luacheck
	@luarocks install --tree .rocks luacov
	@luarocks install --tree .rocks penlight

luacheck:
	@.rocks/bin/luacheck .

busted: test/spec/require.lua
	@.rocks/bin/busted -v --run=tests --config-file=test/.busted \
			-m '${root}/test/?.lua;${root}/src/libs/?.lua;${root}/src/?.lua'

test: .rocks luacheck busted

test/spec/require.lua: ${sources}
	@lua ./test/script/pretest.lua

clean:
	@rm -rf ./test/spec/require.lua

distclean: clean
	@rm -rf .rocks
	@echo removed .rocks

.PHONY: clean test distclean
