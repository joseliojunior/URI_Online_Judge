# author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
# copyright: Josélio Júnior (Lunatic Fox) 2022

import math
ih, im, eh, em = map(lambda x: int(x), input().split(' '))
p = lambda h, m: print(f'O JOGO DUROU {str(h)} HORA(S) E {str(m)} MINUTO(S)' )

tm = (ih * 60 + im) - (eh * 60 + em)
if ih == eh and im == em:
  p(24, 0)
elif ih == eh:
  mm = im - em
  p(23, 60 - mm) if mm > 0 else p(0, mm * -1)
else:
  m = 60 - (tm % 60)
  if tm > 0:
    p(math.floor((1440 - tm) / 60), 0 if m == 60 else m)
  else:
    p(math.ceil(tm / 60) * -1, 0 if m == 60 else m)
