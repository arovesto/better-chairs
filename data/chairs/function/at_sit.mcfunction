scoreboard players set #bool test 0
execute on target store result score #bool test if entity @s[tag=this]

execute if score #bool test matches 1 at @s run ride @a[tag=this,limit=1] mount @s

execute if score #bool test matches 1 run data remove entity @s interaction