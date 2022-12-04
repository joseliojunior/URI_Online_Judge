--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local n = io.read 'n'
local p = n / math.log(n)
local m = 1.25506 * n / math.log(n)
print(('%.1f %.1f'):format(p, m))