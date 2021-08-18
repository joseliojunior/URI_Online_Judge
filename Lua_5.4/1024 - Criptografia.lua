--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local a = {}
for _ = 1, io.read(), 1 do

    local input = io.read()

    local function s(x)
        local t = {}
        for i in string.gmatch(x, '.') do table.insert(t, i) end
        return t
    end

    local s1 = ''
    for _, e in ipairs(s(input)) do
        if string.match(e, '%a') then
            s1 = s1..string.char(utf8.codepoint(e) + 3)
        else
            s1 = s1..e
        end
    end

    local s2 = s(string.reverse(s1))
    local s3 = ''

    local m = #s2 / 2
    for i = 1, m , 1 do s3 = s3..s2[i] end
    if #s2 % 2 == 0 then
        for i = m + 1, #s2, 1 do
            s3 = s3..string.char(utf8.codepoint(s2[i]) - 1)
        end
    else
        for i = m + 0.5, #s2, 1 do
            s3 = s3..string.char(utf8.codepoint(s2[i]) - 1)
        end
    end
    table.insert(a, s3)
end

for _, e in ipairs(a) do print(e) end