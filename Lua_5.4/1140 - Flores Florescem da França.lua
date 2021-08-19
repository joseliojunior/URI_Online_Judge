--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local a = {}
while true do
    local r = io.read()
    if r == '*' then break end

    local t = {}
    for i in string.gmatch(r, '[^ ]+') do
        table.insert(t, string.lower(string.match(i, '%a')))
    end
    
    local res = 0
    for i = 2, #t, 1 do
        if t[1] ~= t[i] then res = res + 1 end
    end

    if res == 0 then res = 'Y' else res = 'N' end

    table.insert(a, res)
end

print(table.concat(a, '\n'))