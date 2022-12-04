--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local t, k = {}, {}
for i = 1, 26 do
  table.insert(t, { string.char(64 + i), string.char(96 + i) })
  table.insert(k, {})
end
for _ = 1, tonumber(io.read()) do
  local r = io.read()
  for e in r:gmatch '.' do
    for i = 1, #t do
      if e == t[i][1] or e == t[i][2] then
        table.insert(k[i], 1)
      end
    end
  end
  local v = 0
  for i = 1, #k do
    if #k[i] > 0 then v = v + 1 end
  end
  if v == 26 then
    print 'frase completa'
  elseif v >= 13 then
    print 'frase quase completa'
  else
    print 'frase mal elaborada'
  end
  k = {} for _ = 1, 26 do table.insert(k, {}) end
end