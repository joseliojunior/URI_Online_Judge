--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local rg = { '`' }
for i = 1, 9, 1 do table.insert(rg, i) end
for e in string.gmatch('0-=QWERTYUIOP[]\\ASDFGHJKL;\'ZXCVBNM,./', '.') do
  table.insert(rg, e)
end
local res = {}
while true do
  local r = io.read() or ''
  if #r < 1 then break end
  for i = 2, #rg, 1 do
    r = r:gsub('[' .. rg[i] .. ']', rg[i - 1])
  end
  table.insert(res, r)
end
print(table.concat(res, '\n'))
