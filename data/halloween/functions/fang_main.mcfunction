# from: loop
# @s: marker

# Handle fangs
execute if predicate halloween:random_30 if score @s hw.cd matches 0 run summon evoker_fangs ~ ~ ~
execute if predicate halloween:random_75 run particle crit ~ ~ ~ 0 0 0 0 1 normal

execute if score @s hw.cd matches 1.. run scoreboard players remove @s hw.cd 1

# Move laser
tp @s ^ ^ ^.75 ~ ~

# End laser
execute unless block ~ ~ ~ minecraft:air run summon minecraft:firework_rocket ~ ~0.2 ~ {Silent:1b,Motion:[0.0,-0.2,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;7032451]},{Type:4,Flicker:0,Trail:0,Colors:[I;5190234]}]}}}}
execute unless block ~ ~ ~ minecraft:air run kill @s