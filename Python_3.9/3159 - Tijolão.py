# author: Josélio Júnior <joseliojrx25@gmail.com>
# copyright: Josélio Júnior 2022

k = [
  'abc', 'def', 'ghi',
  'jkl', 'mno', 'pqrs',
  'tuv', 'wxyz'
]

for _ in range(int(input())):
  rw = []
  r = input()

  for l in r:
    if l == ' ':
      rw.append('0')

    if l.isupper():
      rw.append('#')
      l = l.lower()

    i = 2
    for e in k:
      if l in e:
        si = e.index(l) + 1
        rw.append(str(i) * si)
      i += 1

  res = []
  if len(rw) > 1:
    for i in range(len(rw) - 1):
      if rw[i][-1] == rw[i + 1][0]:
        res.append(rw[i] + '*')
      else:
        res.append(rw[i])
    res.append(rw[-1])
  else:
    res = rw
  print(''.join(res))
