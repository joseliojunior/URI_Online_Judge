--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

for _ = 1, io.read 'n' do
  local r = 0
  for _ = 1, io.read 'n' - 1 do
    r = r + (io.read 'n' - 1)
  end
  r = r + io.read 'n'
  print(r)
end