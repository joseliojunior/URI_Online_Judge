--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local n = io.read 'n'
local p = n / math.log(n)
local m = 1.25506 * n / math.log(n)
print(('%.1f %.1f'):format(p, m))