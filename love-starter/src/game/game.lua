--
-- The Game class is responsible
-- for managing the main game state.
--
local Game = class("Game")

-- Game constructor
function Game:__init()

end

function Game:key(k)
  print("%s - key %s" % { self, k })
end

return Game
