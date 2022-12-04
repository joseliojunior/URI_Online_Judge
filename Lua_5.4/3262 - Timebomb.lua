--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local t = {}
for _ = 1, 5 do table.insert(t, io.read()) end
local u = {}
for i = 1, #t do
  table.insert(u, {})
  for j = 1, #t[i], 4 do
    table.insert(u[i], t[i]:sub(j, j + 2))
  end
end
local v = {}
for i = 1, #u[1] do
  table.insert(v, {})
  for j = 1, 5 do
    table.insert(v[i], u[j][i])
  end
end
local n = {
  '**** ** ** ****',
  '  *  *  *  *  *',
  '***  *****  ***',
  '***  ****  ****',
  '* ** ****  *  *',
  '****  ***  ****',
  '****  **** ****',
  '***  *  *  *  *',
  '**** ***** ****',
  '**** ****  ****'
}
local m = ''
for i = 1, #v do
  v[i] = table.concat(v[i])
  for j = 1, #n do
    if v[i] == n[j] then
      m = m .. (j - 1)
    end
  end
end
if #v == #m then
  print(m % 6 == 0 and 'BEER!!' or 'BOOM!!')
else print 'BOOM!!' end