--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2023

local b = {
  '.***..', '*.....', '*.*...', '**....', '**.*..',
  '*..*..', '***...', '****..', '*.**..', '.**...'
}
while true do
  local n = tonumber(io.read())
  if n == 0 then break end
  if io.read() == 'B' then
    local t = {}
    for e in io.read():gmatch '[^ ]+' do table.insert(t, e) end
    for _ = 1, 2 do
      local j = 1
      for e in io.read():gmatch '[^ ]+' do
        t[j] = t[j] .. e
        j = j + 1
      end
    end
    for i = 1, #t do
      for j = 1, #b do
        if t[i] == b[j] then t[i] = j - 1 end
      end
    end
    print(table.concat(t))
  else
    local t = { {}, {}, {} }
    for e in io.read():gmatch '%d' do
      table.insert(t[1], b[e + 1]:sub(1, 2))
      table.insert(t[2], b[e + 1]:sub(3, 4))
      table.insert(t[3], b[e + 1]:sub(5, 6))
    end
    for i = 1, #t do t[i] = table.concat(t[i], ' ') end
    print(table.concat(t, '\n'))
  end
end
