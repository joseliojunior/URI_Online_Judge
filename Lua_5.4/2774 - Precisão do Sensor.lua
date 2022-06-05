--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

while true do
  local k, r, x = io.read(), io.read(), {}
  if not k then break end
  r = r .. ' !'
  for e in r:gmatch '(.-)%s' do table.insert(x, e) end
  for i = 1, #x do x[i] = tonumber(x[i]) end
  local s = 0
  for i = 1, #x do s = s + x[i] end
  local n = s / #x
  s = 0
  for i = 1, #x do s = s + ((x[i] - n) ^ 2) end
  n = (s / (#x - 1)) ^.5
  print(('%.5f'):format(n))
end