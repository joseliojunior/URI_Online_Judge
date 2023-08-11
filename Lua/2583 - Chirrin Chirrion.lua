--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

for _ = 1, tonumber(io.read()) do
  local iv = {}
  for _ = 1, tonumber(io.read()) do
    local o, c = io.read():match '(.+)%s(.+)'
    if c == 'chirrin' then table.insert(iv, o)
    elseif c == 'chirrion' then
      for j = 1, #iv do
        if o == iv[j] then iv[j] = '' end
      end
    end
  end
  table.sort(iv)
  local jv = {}
  for i = 1, #iv do
    if iv[i] == '' then iv[i] = nil end
    if iv[i + 1] and iv[i] == iv[i + 1] then
      iv[i] = nil
    end
    table.insert(jv, iv[i])
  end
  print 'TOTAL'
  for i = 1, #jv do print(jv[i]) end
end