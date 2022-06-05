--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local a = {}
while true do
  local r = io.read()
  if r == '*' then break end
  local t = {}
  for i in r:gmatch '[^ ]+' do
    table.insert(t, string.lower(i:match '%a'))
  end
  local res = 0
  for i = 2, #t, 1 do
    if t[1] ~= t[i] then res = res + 1 end
  end
  res = res == 0 and 'Y' or 'N'
  table.insert(a, res)
end
print(table.concat(a, '\n'))