--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local k, rp = 0, {}
while k < 2 do
    local t, r = {}, io.read()
    for e in r:gmatch '[^ ]+' do table.insert(t, e) end
    table.insert(rp, t[2] * t[3])
    t = {}
    k = k + 1
end
print(('VALOR A PAGAR: R$ %.2f'):format(rp[1] + rp[2]))