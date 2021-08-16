local t = {}
local r = io.read()

for r in string.gmatch(r, '[^ ]+') do table.insert(t, r) end

print('TRIANGULO: '..string.format('%.3f', (t[1] * t[3]) / 2))
print('CIRCULO: '..string.format('%.3f', 3.14159 * (t[3] ^ 2)))
print('TRAPEZIO: '..string.format('%.3f', ((t[1] + t[2]) / 2) * t[3]))
print('QUADRADO: '..string.format('%.3f', t[2] ^ 2))
print('RETANGULO: '..string.format('%.3f', t[1] * t[2]))