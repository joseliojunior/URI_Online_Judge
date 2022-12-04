# author: Josélio Júnior <joseliojrx25@gmail.com>
# copyright: Josélio Júnior 2022

br_code = [
  '.***..', '*.....', '*.*...', '**....', '**.*..',
  '*..*..', '***...', '****..', '*.**..', '.**...'
]

while True:
  sz = input()
  if sz == '0':
    break

  cmd = input()
  dis_br = []

  if cmd == 'S':
    r = input()
    p = 0

    for _ in range(3):
      step = []
      for e in r:
        step.append(br_code[int(e)][p:p + 2])
      dis_br.append(' '.join(step))
      p += 2
    dis_br = '\n'.join(dis_br)
    print(dis_br)

  elif cmd == 'B':
    pre_br = []

    for _ in range(3):
      pre_br.append(input().split(' '))

    for i in range(int(sz)):
      step = []

      for j in range(3):
        step.append(pre_br[j][i])

      step = ''.join(step)

      if step in br_code:
        dis_br.append(str(br_code.index(step)))

    print(''.join(dis_br))    
