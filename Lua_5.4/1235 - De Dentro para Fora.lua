--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2021

local t, i = tonumber(io.read()), 0
while i < t do
  local f = io.read()
  local function fn(str, x, y, sts)
    return sts and (str:sub(x, y)):reverse() or (str:reverse()):sub(x, y)
  end
  print(fn(f, 1, #f / 2, true) .. fn(f, 1, #f / 2))
  i = i + 1
end