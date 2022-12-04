--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local t, n = { 4, 4.5, 5, 2, 1.5 }, 0
local c, q = io.read():match '(%d+)%s(%d+)'
c, q = tonumber(c), tonumber(q)
for i = 1, #t do
  if c == i then n = n + t[i] * (q > 1 and q or 1) end
end
print(('Total: R$ %.2f'):format(n))