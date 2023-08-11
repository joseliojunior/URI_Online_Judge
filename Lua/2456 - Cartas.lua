--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local t, o = {}, 0
for _ = 1, 5 do table.insert(t, io.read 'n') end
for i = 1, 5 do
  if t[i + 1] then
    if t[i] < t[i + 1] then o = o + 1
    else o = o - 1 end
  end
end
print(o == 4 and 'C' or o == -4 and 'D' or 'N')