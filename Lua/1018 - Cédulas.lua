--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local v = io.read 'n'
local a, n = { v }, { 100, 50, 20, 10, 5, 2, 1 }
for i = 1, #n do
  table.insert(a, ('%d nota(s) de R$ %d,00'):format(math.floor(v / n[i]), n[i]))
  v = v % n[i]
end
print(table.concat(a, '\n'))
