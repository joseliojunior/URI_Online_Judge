--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local q = tonumber(io.read())
while true do
  if q == 0 then break end
  local t, m = {}, {}
  for _ = 1, q do
    local r = io.read()
    table.insert(t, r)
    table.insert(m, #r)
  end
  local max = math.max(table.unpack(m))
  for i = 1, #m do
    local rp = max - m[i]
    print((' '):rep(rp)..t[i])
  end
  q = tonumber(io.read())
  if q ~= 0 then print() end
end