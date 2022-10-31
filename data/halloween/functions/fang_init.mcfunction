# from: fang_shot
# @s: marker

# Get player rotation
data modify entity @s Rotation set from entity @p Rotation
execute store result score @s hw.rotation run data get entity @p Rotation[0]

# Set angle variation
scoreboard players add @s[tag=hw.fang_right] hw.rotation 10
scoreboard players remove @s[tag=hw.fang_left] hw.rotation 10

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s hw.rotation

# Set reverse CD
scoreboard players set @s hw.cd 10