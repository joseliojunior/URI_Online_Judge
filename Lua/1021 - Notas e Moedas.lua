--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local v, n, m = io.read 'n',
    { 100, 50, 20, 10, 5, 2 },
    { 1, .5, .25, .1, .05, .01 }
print 'NOTAS:'
for _, e in ipairs(n) do
  print(('%d nota(s) de R$ %.2f'):format(math.floor(v / e), e))
  v = ('%.2f'):format(v % e)
end
print 'MOEDAS:'
for _, e in ipairs(m) do
  print(('%d moeda(s) de R$ %.2f'):format(math.floor(v / e), e))
  v = ('%.2f'):format(v % e)
end
