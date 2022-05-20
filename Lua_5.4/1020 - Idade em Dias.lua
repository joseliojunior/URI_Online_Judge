--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local n = io.read('n')
print(('%.f ano(s)'):format(math.floor(n / 365)))
print(('%.f mes(es)'):format(math.floor((n % 365) / 30)))
print(('%d dia(s)'):format(((n % 365) % 30)))