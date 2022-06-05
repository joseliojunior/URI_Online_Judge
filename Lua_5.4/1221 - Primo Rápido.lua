--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

local r = io.read()
local function isPrime(n)
  if n == 1 then return 'Not Prime' end
  local i = 2
  while i * i <= n do
    if n % i == 0 then return 'Not Prime' end
    i = i + 1
  end
  return 'Prime'
end
for _ = 1, r, 1 do
  print(isPrime(tonumber(io.read())))
end