--[[
 author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 copyright: Josélio de S. C. Júnior 2021
 submission: #23758420
]]
t = tonumber(io.read())
i = 0
while i < t do
    local str = string.gsub(io.read(), '%s+', ' ')

    local a = {}
    for str in string.gmatch(str, '%a+') do table.insert(a, str) end

    for i = 1, #a, 1 do
        table.insert(a, i, string.match(a[i], '%a'))
        table.remove(a, i + 1)
    end

    print(table.concat(a, nil, 1, #a))
    i = i + 1
end