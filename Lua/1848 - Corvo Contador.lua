--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local k = 1
local t = { 0, 0, 0 }
while k <= 3 do
  local r = io.read()
  if r == 'caw caw' then
    k = k + 1
  else
    r = r:gsub('*', '1')
    r = r:gsub('-', '0')
    t[k] = t[k] + tonumber(r, 2)
  end
end
for _, e in ipairs(t) do print(e) end
