--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local n1, n2 = io.read():match '(%d+)%s(%d+)'
n1, n2 = tonumber(n1), tonumber(n2)
local l = {}
for _ = 1, n1 do
  local k, v = io.read():match '(.)%s(.)'
  l[k] = { k, v }
  l[v] = { v, k }
end
local p = {}
for _ = 1, n2 do
  local r = io.read()
  if r ~= '' then table.insert(p, r) end
end
if #p < n2 then
  for _ = 1, n2 - #p do
    table.insert(p, p[#p])
  end
end
for i = 1, #p do
  local s = ''
  for e in p[i]:gmatch '.' do
    if l[e] and e == l[e][1] then
      s = s .. l[e][2]
    else s = s .. e end
  end
  print(s)
end