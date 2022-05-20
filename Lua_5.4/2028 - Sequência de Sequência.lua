--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local r, t, u, i = io.read('n'), {}, {}, 1
while true do
  if not r then break end
  for j = 1, r do table.insert(t, j) end
  for j = 1, #t do
    for _ = 1, t[j] do
      table.insert(u, j)
    end
  end
  u = { 0, table.unpack(u) }
  print(('Caso %d: %d %s'):format(i, #u, #u > 1 and 'numeros' or 'numero'))
  print(table.concat(u, ' ') .. '\n')
  t, u = {}, {}
  i = i + 1
  r = io.read('n')
end