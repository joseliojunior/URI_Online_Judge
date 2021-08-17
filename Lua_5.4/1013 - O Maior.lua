--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local t = {}
local r = io.read()
for r in string.gmatch(r, '[^ ]+') do table.insert(t, tonumber(r)) end

print(math.max(t[1], t[2], t[3]) .. ' eh o maior')