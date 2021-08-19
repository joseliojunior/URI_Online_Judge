--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local a = {}
while true do
    local vowels = io.read()
    if #vowels < 1 then break end
    local text = io.read()
    local regex = '[^'..vowels..']'
    table.insert(a, #string.gsub(text, regex, ''))
end
print(table.concat(a, '\n'))