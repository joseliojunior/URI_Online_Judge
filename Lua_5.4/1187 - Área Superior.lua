local operator = io.read()
local t = {}
local x = 1
local y = 12

for i = 1, 5, 1 do
    t[i] = {}
    for j = 1, 12, 1 do t[i][j] = io.read() end
    for k = 1, x, 1 do t[i][k] = 0 end
    for k = 12, y, -1 do t[i][k] = 0 end
    x = x + 1
    y = y - 1
end

local sum = 0
for i = 1, 5, 1 do
    for j = 1, #t[i], 1 do sum = sum + t[i][j] end
end

local total = operator == 'M' and sum / 30 or sum

print(string.format('%.1f', total))