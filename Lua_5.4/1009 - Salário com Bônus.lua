--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2021

io.read()
print('TOTAL = R$ ' .. string.format('%.2f', io.read() + (0.15 * io.read())))