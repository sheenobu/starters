-- 
-- string interpolation support via http://lua-users.org/wiki/StringInterpolation 
--

getmetatable("").__mod = function(a, b)
  if not b then
    return a
  elseif type(b) == "table" then
    return string.format(a, unpack(b))
  else
    return string.format(a, b)
  end
end

