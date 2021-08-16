io.read()
print('TOTAL = R$ ' .. string.format('%.2f', io.read() + (0.15 * io.read())))