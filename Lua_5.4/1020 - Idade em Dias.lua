--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local n = io.read 'n'
print(('%.f ano(s)'):format(math.floor(n / 365)))
print(('%.f mes(es)'):format(math.floor((n % 365) / 30)))
print(('%d dia(s)'):format(((n % 365) % 30)))