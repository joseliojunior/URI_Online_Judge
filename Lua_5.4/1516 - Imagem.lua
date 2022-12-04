--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local r1, sz1, h, w = io.read(), {}, 0, 0
for e in r1:gmatch '%d+' do table.insert(sz1, tonumber(e)) end
h, w = sz1[1], sz1[2]
while true do
  if h == 0 then break end
  local d = {}
  for _ = 1, h do table.insert(d, io.read()) end
  local r2, sz2, nh, nw = io.read(), {}, 0, 0
  for e in r2:gmatch '%d+' do table.insert(sz2, tonumber(e)) end
  nh, nw = sz2[1] / h, sz2[2] / w
  local res = {}
  for i = 1, #d do
    for _ = 1, nh do
      local s = ''
      for e in d[i]:gmatch '.' do
        s = s .. e:rep(nw)
      end
      table.insert(res, s)
    end
  end
  sz1, r1 = {}, io.read()
  for e in r1:gmatch '%d+' do table.insert(sz1, tonumber(e)) end
  h, w = sz1[1], sz1[2]
  print(table.concat(res, '\n') .. '\n')
end