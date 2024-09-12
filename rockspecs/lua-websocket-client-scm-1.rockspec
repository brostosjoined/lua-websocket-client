package = "lua-websocket-client"
version = "scm-1"

source = {
  url = "https://github.com/brostosjoined/lua-websocket-client.git",
}

description = {
  summary = "Websockets for Lua",
  homepage = "https://github.com/brostosjoined/lua-websocket-client",
  license = "MIT/X11",
  detailed = "Provides sync and async clients for copas."
}

dependencies = {
  "lua >= 5.1",
  "luasocket",
  "luabitop",
  "copas",
  "luasec"
}

build = {
  type = 'none',
  install = {
    lua = {
      ['websocket'] = 'src/websocket.lua',
      ['websocket.sync'] = 'src/websocket/sync.lua',
      ['websocket.client'] = 'src/websocket/client.lua',
      ['websocket.client_sync'] = 'src/websocket/client_sync.lua',
      ['websocket.client_copas'] = 'src/websocket/client_copas.lua',
      ['websocket.handshake'] = 'src/websocket/handshake.lua',
      ['websocket.tools'] = 'src/websocket/tools.lua',
      ['websocket.frame'] = 'src/websocket/frame.lua',
      ['websocket.bit'] = 'src/websocket/bit.lua',
    }
  }
}

