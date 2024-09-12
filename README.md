# About

This project provides Lua modules for [Websocket Version 13](http://tools.ietf.org/html/rfc6455) conformant clients and servers. 
[![Build Status](https://travis-ci.org/lipp/lua-websockets.svg?branch=master)](https://travis-ci.org/lipp/lua-websockets)
[![Coverage Status](https://coveralls.io/repos/lipp/lua-websockets/badge.png?branch=add-coveralls)](https://coveralls.io/r/lipp/lua-websockets?branch=master)

The minified version is only ~10k bytes in size.

Clients are available in three different flavours:

  - synchronous
  - coroutine based ([copas](http://keplerproject.github.com/copas))


# Dependencies

The client and server modules depend on:

  - luasocket
  - luabitop (if not using Lua 5.2 nor luajit)
  - luasec
  - copas (optionally)

# Install

```shell
$ git clone https://github.com/brostosjoined/lua-websocket-client.git
$ cd lua-websocket-client
$ luarocks make rockspecs/lua-websocket-client-scm-1.rockspec
```

# Minify

A `squishy` file for [squish](http://matthewwild.co.uk/projects/squish/home) is
provided. Creating the minified version (~10k) can be created with:

```sh
$ squish --gzip
```

The minifed version has be to be installed manually though.


