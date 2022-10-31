# from: (adv) technical/fang_shot
# @s: player

# Bye arrows
kill @e[type=arrow,distance=..2,sort=nearest,limit=3]

# Hellow markers!
execute at @s run summon marker ~ ~1 ~ {Tags:["hw.fang","hw.fang_right"]}
execute at @s run summon marker ~ ~1 ~ {Tags:["hw.fang","hw.fang_center"]}
execute at @s run summon marker ~ ~1 ~ {Tags:["hw.fang","hw.fang_left"]}
execute as @e[type=marker,distance=..2,sort=nearest,limit=3] run function halloween:fang_init

advancement revoke @s only halloween:technical/fang_shot requirement