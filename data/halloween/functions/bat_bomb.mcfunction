# from: loop
# @s: dropped item

effect give @p minecraft:invisibility 7 0 true

# "For show" bats
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}
execute at @s run summon bat ~ ~ ~ {Tags:[hw.bat]}

# Kill them all
schedule function halloween:kill_bats 3s
kill @s