--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local t = {}
for _ = 1, 3 do table.insert(t, io.read()) end
print(t[1] .. t[2] .. t[3])
print(t[2] .. t[3] .. t[1])
print(t[3] .. t[1] .. t[2])
for i = 1, 3 do t[i] = t[i]:sub(1, 10) end
print(t[1] .. t[2] .. t[3])