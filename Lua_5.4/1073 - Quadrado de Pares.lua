--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

for i = 2, io.read('n'), 2 do
  print(('%d^%d = %d'):format(i, 2, i ^ 2))
end