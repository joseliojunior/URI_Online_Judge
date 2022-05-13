--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

for _ = 1, tonumber(io.read()) do
  local t, ev = {}, true
  for _ = 1, tonumber(io.read()) do
    table.insert(t, io.read())
  end
  for i = 1, #t do
    if t[1] ~= t[i] then ev = false end
  end
  print(ev and t[1] or 'ingles')
end