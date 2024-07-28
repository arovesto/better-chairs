advancement revoke @s only chairs:chair

tag @s add this
execute as @e[type=minecraft:interaction,tag=chair,distance=..6] run function chairs:at_sit
tag @s remove this