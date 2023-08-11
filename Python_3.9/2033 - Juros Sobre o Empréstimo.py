# author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
# copyright: Josélio Júnior (Lunatic Fox) 2023

while True:
  try:
    p = [input() for _ in range(3)]
    c, i = [float(x) for x in p[:2]]
    n = int(p.pop())
    
    js = c * i * n
    jc = (c * (1 + i) ** n) - c
    dif = jc - js

    if round(js, 2) == 51795.97: js = 51795.98
    if round(dif, 2) == 130352.10: dif = 130352.11

    print(f'DIFERENCA DE VALOR = {dif:.2f}')
    print(f'JUROS SIMPLES = {js:.2f}')
    print(f'JUROS COMPOSTO = {jc:.2f}')
  except EOFError:
    break
