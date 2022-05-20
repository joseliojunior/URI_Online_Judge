--- author: Josélio de S. C. Júnior <joseliojrx25@gmail.com>
--- copyright: Josélio de S. C. Júnior 2022

local b, t, u = ('-'):rep(39), {}, { '10,12,A', '11,13,B', '12,14,C', '13,15,D', '14,16,E', '15,17,F' }
for i = 0, 7 do
  table.insert(t, '|      ' .. i .. '    |    ' .. i .. '    |       ' .. i .. '       |')
end
table.insert(t, '|      8    |   10    |       8       |\n|      9    |   11    |       9       |')
for i = 1, #u do
  local s1, s2, s3 = u[i]:match('(%d+),(%d+),(.+)')
  table.insert(t, '|     ' .. s1 .. '    |   ' .. s2 .. '    |       ' .. s3 .. '       |')
end
t = table.concat(t, '\n')

print(('%s\n%s%s\n%s\n%s'):format(b, '|  decimal  |  octal  |  Hexadecimal  |\n', b, t, b))