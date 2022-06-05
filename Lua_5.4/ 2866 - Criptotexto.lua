--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

for _ = 1, tonumber(io.read()) do
  local r, s = io.read(), ''
  for e in r:gmatch '.' do
    if e:byte() >= 97 then s = s .. e end
  end
  print(s:reverse())
end