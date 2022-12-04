--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local t = {}
for _ = 1, 3 do table.insert(t, io.read 'n') end
print(('A = %d, B = %d, C = %d'):format(table.unpack(t)))
for i = 1, 3 do t[i] = tostring(t[i]) end
local jr = {}
for i = 1, 3 do table.insert(jr, (' '):rep(10 - #t[i]) .. t[i]) end
print(('A = %s, B = %s, C = %s'):format(table.unpack(jr)))
local jz = {}
for i = 1, 3 do
  if t[i]:match '%-(%d+)' then
    table.insert(jz, '-' .. ('0'):rep(10 - #t[i]) .. t[i]:gsub('%-', ''))
  else
    table.insert(jz, ('0'):rep(10 - #t[i]) .. t[i])
  end
end
print(('A = %s, B = %s, C = %s'):format(table.unpack(jz)))
local je = {}
for i = 1, 3 do table.insert(je, t[i] .. (' '):rep(10 - #t[i])) end
print(('A = %s, B = %s, C = %s'):format(table.unpack(je)))