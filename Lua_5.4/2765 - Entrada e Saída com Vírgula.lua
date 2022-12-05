--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local r = io.read()
local p1, p2 = r:match '(.+),(.+)'
print(('%s\n%s'):format(p1, p2))