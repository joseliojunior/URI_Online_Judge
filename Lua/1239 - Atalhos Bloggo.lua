--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local t = {}
local function fn(x)
  x = x:gsub('%_(.-)%_', '<i>%1</i>')
       :gsub('%*(.-)%*', '<b>%1</b>')
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