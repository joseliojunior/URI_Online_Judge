# author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
# copyright: Josélio Júnior (Lunatic Fox) 2022

for _ in range(int(input())):
  c, d = input(), []
  m = int(input())

  for e in c:
    chn = ord(e)
    n = 91 - (65 - (chn - m)) if chn - m < 65 else chn - m
    d.append(chr(n))

  print(''.join(d))
