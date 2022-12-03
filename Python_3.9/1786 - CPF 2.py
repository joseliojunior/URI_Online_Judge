# author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
# copyright: Josélio de S. C. Júnior 2022

def c(l):
  return sum(l) % 11
while True:
  try:
    d1, d2, i, j = [], [], 1, 9
    r = input()
    p1, x = [], 0

    for e in r:
      d1.append(int(e) * i)
      d2.append(int(e) * j)
      
      if i <= 3:
        p1.append(r[x:x + 3])
        x += 3
      i += 1
      j -= 1

    d1 = '0' if c(d1) == 10 else str(c(d1))
    d2 = '0' if c(d2) == 10 else str(c(d2))
    p1 = '.'.join(p1)

    print(f'{p1}-{d1}{d2}')

  except EOFError:
    break
