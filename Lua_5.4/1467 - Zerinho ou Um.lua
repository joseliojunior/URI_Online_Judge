--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local r = io.read()
local a, b, c = r:match '([01])%s([01])%s([01])'
while true do
  if b == c and a ~= c then print 'A'
  elseif a == c and b ~= c then print 'B'
  elseif a == b and b ~= c then print 'C'
  else print '*' end
  r = io.read()
  if not r then break end
  a, b, c = r:match '([01])%s([01])%s([01])'
end