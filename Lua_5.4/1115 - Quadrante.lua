--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local x, y = io.read 'n', io.read 'n'
while true do
  if x == 0 or y == 0 then break end
  if x > 0 and y > 0 then print 'primeiro' end
  if x < 0 and y > 0 then print 'segundo' end
  if x < 0 and y < 0 then print 'terceiro' end
  if x > 0 and y < 0 then print 'quarto' end
  x, y = io.read 'n', io.read 'n'
end