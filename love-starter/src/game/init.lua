--
-- the initializer, which registers a global game object `G`
-- which can be referenced by the love.* style functions
--

G = require('game.game')()

-- load the various sub-game components
require('game.handlers')
