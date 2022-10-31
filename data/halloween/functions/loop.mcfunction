function halloween:darkness

# Bat Bomb
execute as @e[type=item,nbt={Item:{tag:{halloween:{item:'bat_bomb'}}}}] run function halloween:bat_bomb

# Fang Shot
execute as @e[type=marker,tag=hw.fang] run execute at @s run function halloween:fang_main