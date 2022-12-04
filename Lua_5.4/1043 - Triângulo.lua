--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local a, b, c = io.read 'n', io.read 'n', io.read 'n'
if math.abs(b - c) < a and a < b + c then
  print(('Perimetro = %.1f'):format(a + b + c))
else
  print(('Area = %.1f'):format((((a + b) * c)) / 2))
end