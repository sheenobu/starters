# love-starter

A starter template for a love2d/lua-based project. 

## Notes

I am not a lua developer so this isn't super great. Will iterate
on improvements as needed. Feel free to offer advice or ignore me.

## Language and Structure details

### Classy

Classes are defined via classy. Within any file, the `class` method
is available. 

### Modules

All class modules are using `local Name = class('name'); return Name`. Therefore
using classes is just `cl = require 'path'; cl()`.

All non-class modules are using the simpler `local M; ...; return M;`

### Unit Testing

`tests/runner.lua` is a LuaUnit based test runner. The list of tests
are within `tests/testlist.lua` and generated via a Makefile.

Tests are defined via classy as well and named as `TestClassName:testMethodName`.

### String interpolation

String interpolation is done via the mod operator (`%`). Example:

`
local s = "asdf %s %s" % { var1, var2 }
`
