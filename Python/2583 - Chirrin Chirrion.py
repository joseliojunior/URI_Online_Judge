# author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
# copyright: Josélio Júnior (Lunatic Fox) 2022

tn = int(input())

for _ in range(tn):
  inv = []
  ut = int(input())

  for i in range(ut):
    stuff, cmd = input().split(' ')

    if (stuff not in inv) and cmd == 'chirrin':
      inv.append(stuff)
    elif (stuff in inv) and cmd == 'chirrion':
      inv.remove(stuff)

  inv.sort()
  inv = '\n'.join(inv)
  print(f'TOTAL\n{inv}')
