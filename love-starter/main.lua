-- 
-- main love2d entrypoint
-- path and language construct bookkeeping
--

-- Setup the import paths
-- TODO: confirm whether love2d will support this
--       for shipping packaged games.
--
package.path = "./src/?.lua;"     .. package.path
package.path = "./vendor/?.lua;"   .. package.path

-- '%'-style string interpolation
require 'stringInterpolation'

-- make 'class' a global so we can define classes
class = require 'classy'

-- oh shit waddup run the game
require('game/init')

