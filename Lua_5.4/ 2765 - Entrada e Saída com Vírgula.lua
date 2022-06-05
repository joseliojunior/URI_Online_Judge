--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local r = io.read()
local p1, p2 = r:match '(.+),(.+)'
print(('%s\n%s'):format(p1, p2))