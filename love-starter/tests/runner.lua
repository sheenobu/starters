#!/usr/bin/env lua
-- 
-- Unit test launcher
--

--
-- support paths
-- 
package.path = "./src/?.lua;" .. package.path
package.path = "./vendor/?.lua;" .. package.path
package.path = "./tests/?.lua;" .. package.path

--
-- support code
-- 
require 'stringInterpolation'
class = require('classy')
test = require('luaunit')

-- testlist is generated via a makefile 
-- so that we can include all the files in a list.
-- there is a way to do this in pure lua but 
-- it is not necessary
require 'testlist'

-- execution
--
test.LuaUnit:run()
