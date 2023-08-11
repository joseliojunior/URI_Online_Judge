--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

for _ = 1, tonumber(io.read()) do
  local t = {}
  for _ = 1, 3 do table.insert(t, io.read 'n') end
  local h, d, g = table.unpack(t)
  if (h >= 200 and h <= 300) and d >= 50 and g >= 150 then
    print 'Sim'
  else print 'Nao' end
end