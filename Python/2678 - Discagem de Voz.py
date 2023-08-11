# author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
# copyright: Josélio Júnior (Lunatic Fox) 2022

import re

k = [
  'abc', 'def', 'ghi',
  'jkl', 'mno', 'pqrs',
  'tuv', 'wxyz'
]

while True:
  try:
    r = re.sub(r'[^a-zA-Z0-9#*]', '', input())
    res = ''

    for e in r:
      if re.match(r'#|\*|\d', e):
        res += e
      else:
        for i in range(len(k)):
          if e.lower() in k[i]:
            res += str(i + 2)

    print(res)
  except EOFError:
    break
