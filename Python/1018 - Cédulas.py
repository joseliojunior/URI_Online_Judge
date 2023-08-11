# author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
# copyright: Josélio Júnior (Lunatic Fox) 2022

import math

v = int(input())
a, n = [str(v)], [100, 50, 20, 10, 5, 2, 1]

for i in range(len(n)):
  a.append(f'{str(math.floor(v / n[i]))} nota(s) de R$ {str(n[i])},00')
  v %= n[i]

print('\n'.join(a))
