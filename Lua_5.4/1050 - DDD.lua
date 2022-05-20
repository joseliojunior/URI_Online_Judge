--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local t = {
  { 61, 'Brasilia' },
  { 71, 'Salvador' },
  { 11, 'Sao Paulo' },
  { 21, 'Rio de Janeiro' },
  { 32, 'Juiz de Fora' },
  { 19, 'Campinas' },
  { 27, 'Vitoria' },
  { 31, 'Belo Horizonte' }
}
local r = io.read('n')
for i = 1, #t do
  if r == t[i][1] then r = t[i][2] end
end
print(type(r) == 'number' and 'DDD nao cadastrado' or r)