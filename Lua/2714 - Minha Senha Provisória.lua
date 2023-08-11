--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

for _ = 1, tonumber(io.read()) do
  local r = io.read()
  if r:match('RA' .. ('%d'):rep(18)) then
    print(tonumber(r:match('RA(' .. ('%d'):rep(18) .. ')')))
  else  print 'INVALID DATA' end
end