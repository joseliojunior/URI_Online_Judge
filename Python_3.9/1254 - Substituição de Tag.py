# author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
# copyright: Josélio Júnior (Lunatic Fox) 2022

import re
while True:
  try:
    r: list[str] = []
    for _ in range(3):
      r.append(input())
    tag, rep, ln = r

    r_tag = re.findall(fr'(?i)(<.*?>)', ln)
    rp_tag = list(map(lambda e: re.sub(fr'(?i){tag}', rep, e), r_tag))

    for i in range(len(r_tag)):
      ln = ln.replace(r_tag[i], rp_tag[i])

    print(ln)
  except EOFError:
    break
