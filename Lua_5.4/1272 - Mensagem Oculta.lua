--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local t, i = tonumber(io.read()), 0
while i < t do
  local str = string.gsub(io.read(), '%s+', ' ')
  local a = {}
  for e in str:gmatch '%a+' do table.insert(a, e) end

  for j = 1, #a, 1 do
    table.insert(a, j, a[j]:match '%a')
    table.remove(a, j + 1)
  end
  print(table.concat(a))
  i = i + 1
end