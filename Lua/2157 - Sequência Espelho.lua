--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

for _ = 1, tonumber(io.read()) do
  local x, y = io.read():match '(%d+)%s(%d+)'
  local sn = ''
  for j = tonumber(x), tonumber(y) do sn = sn .. j end
  print(sn .. sn:reverse())
end