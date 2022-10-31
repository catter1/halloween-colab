# from: (adv) technical/fang_shot
# @s: player

execute as @e[type=arrow,distance=..2,sort=nearest,limit=3] run execute positioned as @s anchored eyes rotated as @s run summon marker ^ ^ ^ {Tags:[hw.fang]}
#execute as @e[type=marker,distance=..2,sort=nearest,limit=3] run function halloween:fang_init

kill @e[type=arrow,distance=..2,sort=nearest,limit=3]

advancement revoke @s only halloween:technical/fang_shot requirement