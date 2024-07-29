execute as @e[type=minecraft:interaction,tag=chair] at @s unless block ~ ~ ~ #stairs run kill @s
execute as @e[type=minecraft:interaction,tag=chair_sit] at @s unless block ~ ~ ~ #stairs run kill @s
execute if predicate chairs:random as @e[type=minecraft:interaction,tag=chair] at @s run particle happy_villager ~ ~0.5 ~ 0 0 0 0 1
execute as @e[type=minecraft:interaction,tag=chair_sit] at @s unless data entity @s Passengers run ride @e[type=!#chairs:technical,sort=nearest,distance=..1.5,limit=1] mount @s