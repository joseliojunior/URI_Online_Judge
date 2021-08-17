--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local t = tonumber(io.read())
local i = 0
while i < t do
    local f = io.read()
    local function fn(str, x, y, sts)
        return sts and string.reverse(string.sub(str, x, y)) or string.sub(string.reverse(str), x, y)
    end
    print(fn(f, 1, #f / 2, true)..fn(f, 1, #f / 2))
    i = i + 1
end