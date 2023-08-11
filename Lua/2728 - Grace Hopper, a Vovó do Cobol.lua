--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local r = io.read()
while true do
  local k1 = {}
  if not r then break end
  for e in r:gmatch '(.-)%-' do
    table.insert(k1, e:sub(1,1)..e:sub(-1))
    r = r:gsub('^'..e..'%-', '')
  end
  table.insert(k1, r:sub(1,1)..r:sub(-1))
  local l, n = { '[Cc]', '[Oo]', '[Bb]', '[Oo]', '[Ll]' }, 0
  for i = 1, #k1 do
    if k1[i]:match(l[i]) then n = n + 1 end
  end
  print(n == 5 and 'GRACE HOPPER' or 'BUG')
  r = io.read()
end