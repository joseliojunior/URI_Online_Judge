--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local n = io.read 'n'
n = n % 2 == 0 and n + 1 or n
for i = n, n + 10, 2 do print(i) end