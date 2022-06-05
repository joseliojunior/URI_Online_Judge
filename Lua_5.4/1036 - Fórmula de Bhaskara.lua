--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local r, t = io.read(), {}
for e in r:gmatch '(.-)%s' do table.insert(t, e) end
table.insert(t, r:match '%s(%d%.?%d*)$')
for i = 1, #t do t[i] = tonumber(t[i]) end
local a, b, c, emsg = t[1], t[2], t[3], 'Impossivel calcular'
local d = (b ^ 2 - 4 * a * c)
if d < 0 then
  print(emsg)
else
  d = { -b + (d ^ .5), -b - (d ^ .5) }
  if d[1] == 0 or d[2] == 0 then
    print(emsg)
  else
    for i = 1, #d do d[i] = d[i] / (2 * a) end
    print(('R1 = %.5f'):format(d[1]))
    print(('R2 = %.5f'):format(d[2]))
  end
end