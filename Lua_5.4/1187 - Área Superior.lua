--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local op = io.read()
local t = {}
local x = 1
local y = 12

local sum = 0
for i = 1, 5, 1 do
    t[i] = {}
    for j = 1, 12, 1 do t[i][j] = io.read('n') end
    for k = 1, x, 1 do t[i][k] = 0 end
    for k = 12, y, -1 do t[i][k] = 0 end
    for j = 1, #t[i], 1 do sum = sum + t[i][j] end
    x = x + 1
    y = y - 1
end

local total = op == 'M' and sum / 30 or sum

print(string.format('%.1f', total))
