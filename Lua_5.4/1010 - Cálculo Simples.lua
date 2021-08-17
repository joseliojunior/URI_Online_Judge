--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local k = 0
local rp = {}
while k < 2 do
    local t = {}
    local r = io.read()
    for r in string.gmatch(r, '[^ ]+') do table.insert(t, r) end
    table.insert(rp, t[2] * t[3])
    t = {}
    k = k + 1
end

print('VALOR A PAGAR: R$ ' .. string.format('%.2f', rp[1] + rp[2]))