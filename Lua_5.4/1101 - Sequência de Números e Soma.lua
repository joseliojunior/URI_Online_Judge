--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local res = {}

while true do

    local t = {}
    local input = io.read()
    for i in string.gmatch(input, '[^ ]+') do table.insert(t, tonumber(i)) end

    if t[1] <= 0 or t[2] <= 0 then break end

    table.sort(t, function(a, b) return a < b end)

    local a = {}
    local sum = 0
    for i = t[1], t[2], 1 do
        table.insert(a, i)
        sum = sum + i
    end

    table.insert(res, table.concat(a, ' ')..' Sum='..sum)

end

print(table.concat(res, '\n'))