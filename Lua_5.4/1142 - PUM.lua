--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local r, t = io.read 'n', { 1, 2, 3 }
for _ = 1, r do
  print(('%d %d %d PUM'):format(t[1], t[2], t[3]))
  for i = 1, #t do t[i] = t[i] + 4 end
end