--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local t, r = {}, io.read()
for e in r:gmatch '[^ ]+' do table.insert(t, tonumber(e)) end
print(math.max(t[1], t[2], t[3]) .. ' eh o maior')