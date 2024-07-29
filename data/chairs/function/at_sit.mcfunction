scoreboard players set #bool chairs_logic_var 0
execute on target store result score #bool chairs_logic_var if entity @s[tag=this]

execute if score #bool chairs_logic_var matches 1 at @s if data entity @n[type=minecraft:interaction,tag=chair_sit] Passengers run return run tellraw @p[tag=this] "chair is occupied"

execute if score #bool chairs_logic_var matches 1 at @s run ride @p[tag=this] mount @n[type=minecraft:interaction,tag=chair_sit]

execute if score #bool chairs_logic_var matches 1 run data remove entity @s interaction