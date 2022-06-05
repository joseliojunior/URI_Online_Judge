--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local n1, n2 = io.read 'n', io.read 'n'
local x = n1 < n2 and n1 or n2
local y = n1 < n2 and n2 or n1
for i = x + 1, y - 1 do
  if i % 5 == 2 or i % 5 == 3 then print(i) end
end