--
-- love event handlers
--

-- a simple quit-on-escape setup by default
function love.keyreleased(key)
  if key == 'escape' then
    love.event.quit()
  end
end

function love.keypressed(key)
  --G:key(key)
end
