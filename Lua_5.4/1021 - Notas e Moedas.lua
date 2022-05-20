--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local v, n, m = io.read('n'),
    { 100, 50, 20, 10, 5, 2 },
    { 1, 0.5, 0.25, 0.1, 0.05, 0.01 }
print('NOTAS:')
for _, e in ipairs(n) do
  print(('%d nota(s) de R$ %.2f'):format(math.floor(v / e), e))
  v = ('%.2f'):format(v % e)
end
print('MOEDAS:')
for _, e in ipairs(m) do
  print(('%d moeda(s) de R$ %.2f'):format(math.floor(v / e), e))
  v = ('%.2f'):format(v % e)
end