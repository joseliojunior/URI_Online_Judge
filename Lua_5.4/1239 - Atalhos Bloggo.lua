--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local t = {}
local function fn(x)
    x = string.gsub(x, '%_(.-)%_', '<i>%1</i>')
    x = string.gsub(x, '%*(.-)%*', '<b>%1</b>')
    return x
end

while true do
    local r = io.read() or ''

    if #r < 1 then
        local next = io.read() or ''
        if #next < 1 then break end
        table.insert(t, fn(next))
    end

    table.insert(t, fn(r))
end

print(table.concat(t, '\n'))