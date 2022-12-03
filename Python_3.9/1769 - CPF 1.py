# author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
# copyright: Josélio de S. C. Júnior 2022

import re

def c(l):
  return sum(l) % 11

while True:
  try:
    d1, d2, i, j = [], [], 1, 9
    r = input()
    r = ''.join(re.split('\\.|\\-', r))

    for e in range(9):
      d1.append(int(r[e]) * i)
      d2.append(int(r[e]) * j)
      i += 1
      j -= 1

    d1 = '0' if c(d1) == 10 else str(c(d1))
    d2 = '0' if c(d2) == 10 else str(c(d2))

    if str(r[-2]) + str(r[-1]) == d1 + d2:
      print('CPF valido')
    else:
      print('CPF invalido')

  except EOFError:
    break
