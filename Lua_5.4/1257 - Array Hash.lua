--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local a = {}
for i = 0, 25 do a[string.char(i + 65)] = i end
for _ = 1, tonumber(io.read()) do
  local st = 0
  for i = 0, tonumber(io.read()) - 1 do
    local str, it = io.read(), 0
    for e in str:gmatch '.' do
      it = it + a[e] + i
    end
    for j = 0, #str - 1 do it = it + j end
    st = st + it
  end
  print(st)
end