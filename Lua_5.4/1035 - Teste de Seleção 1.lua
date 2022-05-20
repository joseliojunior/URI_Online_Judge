--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local a, b, c, d = io.read('n'), io.read('n'), io.read('n'), io.read('n')
if b > c
    and d > a
    and c + d > a + b
    and c >= 0
    and d >= 0
    and a % 2 == 0 then print 'Valores aceitos'
else print 'Valores nao aceitos' end