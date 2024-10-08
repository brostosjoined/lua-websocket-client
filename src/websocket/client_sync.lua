local socket = require'socket'
local sync = require'websocket.sync'
local tools = require'websocket.tools'

local new = function(ws)
  ws =  ws or {}
  local self = {}
  
  if type(ws.userAgent) == "string" then
    self.userAgent = ws.userAgent
  end
  self.sock_connect = function(self,host,port,protocol)
    self.sock = socket.tcp()
    if ws.timeout ~= nil then
      self.sock:settimeout(ws.timeout)
      self.originalTimeoutValue = ws.timeout
    end
    local _,err = self.sock:connect(host,port)
    if err then
      self.sock:close()
      return nil,err
    end
    if protocol == 'wss' then
      --do ssl handshake
      local ssl = require("ssl")
      local params = {
          mode = "client",
          protocol = "tlsv1",
          verify = "none",
          options = "all",
      }
      self.sock = ssl.wrap(self.sock, params)
      self.sock:dohandshake()
    end
  end
  
  self.sock_send = function(self,...)
    return self.sock:send(...)
  end
  
  self.sock_receive = function(self,...)
    return self.sock:receive(...)
  end
  
  self.sock_close = function(self)
    --self.sock:shutdown() Causes errors?
    self.sock:close()
  end
  
  self = sync.extend(self)
  return self
end

return new
