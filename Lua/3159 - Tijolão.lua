--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local c, key, n = {}, { 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz' }, 0
for i = 1, #key do
  for j = 1, #key[i] do
    c[string.char(97 + n)] = tostring(i + 1):rep(j)
    n = n + 1
  end
end
for _ = 1, tonumber(io.read()) do
  local t = io.read()
  local str = {}
  for e in t:gmatch '.' do
    if c[e] then
      table.insert(str, c[e])
    elseif e == ' ' then
      table.insert(str, '0')
    else
      table.insert(str, '#' .. c[e:lower()])
    end
  end
  for i = 1, #str do
    if str[i + 1] and str[i]:match '%d$' == str[i + 1]:match '^%d' then
      str[i] = str[i] .. '*'
    end
  end
  print(table.concat(str))
end