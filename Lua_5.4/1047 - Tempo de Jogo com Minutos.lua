--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local ih, im, eh, em = io.read 'n', io.read 'n', io.read 'n', io.read 'n'
local function p(h, m) print(('O JOGO DUROU %d HORA(S) E %d MINUTO(S)'):format(h, m)) end
local every = (ih == eh and im == em) and true
local tm = (ih * 60 + im) - (eh * 60 + em)
if every then
  p(24, 0)
elseif ih == eh then
  local mm = im - em
  if mm > 0 then p(23, 60 - mm)
  else p(0, mm * -1) end
else
  local m = 60 - (tm % 60)
  if tm > 0 then p(math.floor((1440 - tm) / 60), m == 60 and 0 or m)
  else p(math.ceil(tm / 60) * -1, m == 60 and 0 or m) end
end