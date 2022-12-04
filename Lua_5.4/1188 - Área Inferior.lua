--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local op, t, x, y, sum = io.read(), {}, 5, 8, 0
for i = 1, 12, 1 do
  t[i] = {}
  for j = 1, 12, 1 do t[i][j] = io.read() end
end
for _ = 1, 7, 1 do table.remove(t, 1) end
for i = 1, #t, 1 do
  for k = 1, x, 1 do t[i][k] = 0 end
  for k = 12, y, -1 do t[i][k] = 0 end
  for j = 1, #t[i], 1 do sum = sum + t[i][j] end
  x = x - 1
  y = y + 1
end
local total = op == 'M' and sum / 30 or sum
print(('%.1f'):format(total))
