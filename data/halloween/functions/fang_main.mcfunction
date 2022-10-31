# from: loop
# @s: marker

summon evoker_fangs ~ ~ ~

tp @s ^ ^ ^.5

execute unless block ~ ~ ~ minecraft:air run summon minecraft:firework_rocket ~ ~0.2 ~ {Silent:1b,Motion:[0.0,-0.2,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;7032451]},{Type:4,Flicker:0,Trail:0,Colors:[I;5190234]}]}}}}
execute unless block ~ ~ ~ minecraft:air run kill @s