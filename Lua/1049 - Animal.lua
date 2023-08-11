--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local t = {
  vertebrado = {
    ave = {
      carnivoro = 'aguia',
      onivoro = 'pomba'
    },
    mamifero = {
      onivoro = 'homem',
      herbivoro = 'vaca'
    }
  },
  invertebrado = {
    inseto = {
      hematofago = 'pulga',
      herbivoro = 'lagarta'
    },
    anelideo = {
      hematofago = 'sanguessuga',
      onivoro = 'minhoca'
    }
  }
}
local u = {}
for _ = 1, 3 do table.insert(u, io.read()) end
print(t[u[1]][u[2]][u[3]])