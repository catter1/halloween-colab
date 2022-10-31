function halloween:darkness

# Bat Bomb
execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{halloween:{item:'bat_bomb'}}}}] run function halloween:bat_bomb

# Fang Shot
execute as @e[type=marker,tag=hw.fang] run function halloween:fang_main