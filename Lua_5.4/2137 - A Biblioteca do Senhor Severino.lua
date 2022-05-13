--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local r, rt = tonumber(io.read()), {}
while true do
  if not r then break end
  local t = {}
  for _ = 1, r do table.insert(t, io.read()) end
  table.sort(t, function(a, b) return tonumber(a) < tonumber(b) end)
  for i = 1, #t do table.insert(rt, t[i]) end
  r = tonumber(io.read())
end
print(table.concat(rt, '\n'))