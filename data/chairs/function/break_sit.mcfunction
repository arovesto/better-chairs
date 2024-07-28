advancement revoke @s only chairs:break_chair
tag @s add this
execute as @e[type=minecraft:interaction,tag=chair,distance=..6] run function chairs:at_break
tag @s remove this