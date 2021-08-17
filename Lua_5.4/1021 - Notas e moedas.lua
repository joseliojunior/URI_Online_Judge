--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local v = io.read()
local n = {100, 50, 20, 10, 5, 2}
local m = {1, 0.5, 0.25, 0.1, 0.05, 0.01}

print('NOTAS:')
for _, e in ipairs(n) do
    print(math.floor(v / e)..' nota(s) de R$ '..string.format('%.2f', e))
    v = string.format('%.2f', v % e)
end

print('MOEDAS:')
for _, e in ipairs(m) do
    print(math.floor(v / e)..' moeda(s) de R$ '..string.format('%.2f', e))
    v = string.format('%.2f', v % e)
end