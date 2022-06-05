--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local n = io.read 'n'
n = n % 2 == 0 and n + 1 or n
for i = n, n + 10, 2 do print(i) end