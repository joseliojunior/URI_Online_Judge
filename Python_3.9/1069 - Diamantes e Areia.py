# author: Josélio Júnior <joseliojrx25@gmail.com>
# copyright: Josélio Júnior 2022

for _ in range(int(input())):
  r = input().replace('.', '')
  dc, d = 0, '<>'

  while True:
    if r.find(d) >= 0:
      dc += 1
      r = r.replace(d, '', 1)
    else:
      break

  print(dc)
