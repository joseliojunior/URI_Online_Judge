--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local v = 0
local t = { 300, 1500, 600, 1000, 150 }
for i = 1, #t, 1 do v = v + (t[i] * io.read()) end
print(v + 225)