--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local res = {}
while true do
  local t, input = {}, io.read()
  for i in input:gmatch '[^ ]+' do table.insert(t, tonumber(i)) end
  if t[1] <= 0 or t[2] <= 0 then break end
  table.sort(t, function(a, b) return a < b end)
  local a, sum = {}, 0
  for i = t[1], t[2], 1 do
    table.insert(a, i)
    sum = sum + i
  end
  table.insert(res, table.concat(a, ' ') .. ' Sum=' .. sum)
end
print(table.concat(res, '\n'))