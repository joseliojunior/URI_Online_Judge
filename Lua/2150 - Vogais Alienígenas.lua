--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local a = {}
while true do
  local vowels = io.read()
  if #vowels < 1 then break end
  local text = io.read()
  table.insert(a, #text:gsub('[^' .. vowels .. ']', ''))
end
print(table.concat(a, '\n'))