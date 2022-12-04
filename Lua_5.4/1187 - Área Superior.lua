--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local o, t, x, y = io.read(), {}, 1, 12
for i = 1, 5, 1 do
  t[i] = {}
  for j = 1, 12, 1 do t[i][j] = io.read 'n' end
  for k = 1, x, 1 do t[i][k] = 0 end
  for k = 12, y, -1 do t[i][k] = 0 end
  x, y = x + 1, y - 1
end
x = 0
for i = 1, 5, 1 do
  for j = 1, #t[i], 1 do x = x + t[i][j] end
end
print(('%.1f'):format(o == 'M' and x / 30 or x))
