--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

for _ = 1, tonumber(io.read()) do
  local n = io.read()
  print(n:match(('[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]'):rep(3))
    and n .. ' nao eh facil'
    or n .. ' eh facil')
end