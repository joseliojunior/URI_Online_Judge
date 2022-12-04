--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local b, s, w = ('-'):rep(39), ('|%s|\n'):format((' '):rep(37)), 'x = 35'
local l = {
  ('|%s%s|\n'):format(w, (' '):rep(31)),
  ('|%s%s%s|\n'):format((' '):rep(15), w, (' '):rep(16)),
  ('|%s%s|\n'):format((' '):rep(31), w)
}
print(('%s\n%s%s%s%s%s%s'):format(b, l[1], s, l[2], s, l[3], b))