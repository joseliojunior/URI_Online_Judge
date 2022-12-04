--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local c, f = {}, {}
local n = tonumber(io.read())
for _ = 1, n do table.insert(c, io.read 'n') end
for _ = 1, n do table.insert(f, io.read 'n') end
local function path(p1, p2)
  local k, v = true, 0
  for i = 1, #f do
    if k then
      if p1[i] == 0 or (p1[i + 1] and (p1[i + 1] > p1[i] or p1[i + 1] == 0)) then
        v = v + 1
        k = false
      end
    else
      if p2[i] == 0 or (p2[i + 1] and (p2[i + 1] > p2[i] or p2[i + 1] == 0)) then
        v = v + 1
        k = true
      end
    end
  end
  return v
end
print(math.min(path(c, f), path(f, c)))