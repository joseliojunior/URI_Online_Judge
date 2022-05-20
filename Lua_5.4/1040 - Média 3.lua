--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local t, avg = { 2, 3, 4, 1 }, 0
for i = 1, #t do t[i] = t[i] * io.read('n') end
for i = 1, #t do avg = avg + t[i] end
avg = avg / 10
print(('Media: %.1f'):format(avg))
if avg >= 7 then
  print 'Aluno aprovado.'
elseif avg >= 5 and avg < 7 then
  print 'Aluno em exame.'
  local e = io.read('n')
  print(('Nota do exame: %.1f'):format(e))
  avg = (avg + e) / 2
  if avg >= 5 then
    print 'Aluno aprovado.'
  else
    print 'Aluno reprovado.'
  end
  print(('Media final: %.1f'):format(avg))
else
  print 'Aluno reprovado.'
end