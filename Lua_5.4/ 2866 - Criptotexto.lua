--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

for _ = 1, tonumber(io.read()) do
  local r, s = io.read(), ''
  for e in r:gmatch '.' do
    if e:byte() >= 97 then s = s .. e end
  end
  print(s:reverse())
end