--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local r = io.read()
local d, m, y = r:match('(%d%d)/(%d%d)/(%d%d)')
print(('%s/%s/%s'):format(m, d, y))
print(('%s/%s/%s'):format(y, m, d))
print(('%s-%s-%s'):format(d, m, y))