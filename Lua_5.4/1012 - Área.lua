--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local t, r = {}, io.read()
for e in r:gmatch '[^ ]+' do table.insert(t, e) end
print(('TRIANGULO: %.3f'):format((t[1] * t[3]) / 2))
print(('CIRCULO: %.3f'):format(3.14159 * (t[3] ^ 2)))
print(('TRAPEZIO: %.3f'):format(((t[1] + t[2]) / 2) * t[3]))
print(('QUADRADO: %.3f'):format(t[2] ^ 2))
print(('RETANGULO: %.3f'):format(t[1] * t[2]))
