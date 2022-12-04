# author: Josélio Júnior <joseliojrx25@gmail.com>
# copyright: Josélio Júnior 2022

while True:
  a = input()
  if a == '*':
    break
  a = a.lower().split(' ')
  a = list(map(lambda x: x[0], a))
  b = list(filter(lambda x: x == a[0], a))
  a = 'Y' if len(a) == len(b) else 'N'
  print(a)
