--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

while true do
  local t, k, r = {}, true, io.read()
  if not r then break end
  for e in r:gmatch '.' do
    if e:match '%a' then
      if k then
        table.insert(t, e:upper())
        k = false
      else
        table.insert(t, e:lower())
        k = true
      end
    else
      table.insert(t, e)
    end
  end
  print(table.concat(t, ''))
end
