--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local x, y = io.read('n'), io.read('n')
if x > y and (y <= 96 and y >= 3) then print 'minguante'
elseif y >= 0 and y <= 2 then print 'nova'
elseif y >= 97 and y <= 100 then print 'cheia'
else print 'crescente' end