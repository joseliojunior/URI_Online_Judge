--- author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
--- copyright: Josélio Júnior (Lunatic Fox) 2022

local t = io.read 'n'
local h = math.floor(t / 3600)
local m = math.floor((t % 3600) / 60)
local s = (t % 3600) % 60
print(('%d:%d:%d'):format(h, m, s))