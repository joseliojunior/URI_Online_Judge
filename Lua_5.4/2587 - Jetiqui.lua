--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

for _ = 1, tonumber(io.read()) do
  local w1, t1 = io.read(), {}
  local w2, t2 = io.read(), {}
  local wu, i = io.read(), 1
  for e in wu:gmatch '.' do
    if e == '_' then
      table.insert(t1, w1:sub(i, i))
      table.insert(t2, w2:sub(i, i))
    end
    i = i + 1
  end
  if (t1[1] == t1[2] or t2[1] == t2[2])
      or (t1[1] == t2[2] and t1[2] ~= t2[1])
      or (t1[2] == t2[1] and t1[1] ~= t2[2])
      or (t1[2] == t2[1] and t1[1] == t2[2])
      or (t1[1] == t2[1] and t1[2] == t2[2])
  then print 'Y' else print 'N' end
end