--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local w = { 'Roberto', '5786', 'UNIFEI' }
local function l(x) return ('|%s%s%s|\n'):format((' '):rep(8), x, (' '):rep(29 - #x)) end
local b, s = ('-'):rep(39), ('|%s|\n'):format((' '):rep(37))
print(('%s\n%s%s%s%s%s%s'):format(b, l(w[1]), s, l(w[2]), s, l(w[3]), b))