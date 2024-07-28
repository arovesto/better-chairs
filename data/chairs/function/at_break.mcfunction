# GENERATED FROM minecraft_command_remove_stairs_gen.py
scoreboard players set #bool test 0
execute on attacker store result score #bool test if entity @s[tag=this]
execute if score #bool test matches 1 at @s run kill @e[type=minecraft:interaction,tag=chair_sit,distance=..0.5]
execute if score #bool test matches 1 at @s run kill @s
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:oak_stairs run summon item ~ ~0.5 ~ {Item:{id:oak_stairs,count:1,components:{custom_name:'[{"text":"Oak Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:spruce_stairs run summon item ~ ~0.5 ~ {Item:{id:spruce_stairs,count:1,components:{custom_name:'[{"text":"Spruce Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:birch_stairs run summon item ~ ~0.5 ~ {Item:{id:birch_stairs,count:1,components:{custom_name:'[{"text":"Birch Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:jungle_stairs run summon item ~ ~0.5 ~ {Item:{id:jungle_stairs,count:1,components:{custom_name:'[{"text":"Jungle Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:acacia_stairs run summon item ~ ~0.5 ~ {Item:{id:acacia_stairs,count:1,components:{custom_name:'[{"text":"Acacia Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:dark_oak_stairs run summon item ~ ~0.5 ~ {Item:{id:dark_oak_stairs,count:1,components:{custom_name:'[{"text":"Dark Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:crimson_stairs run summon item ~ ~0.5 ~ {Item:{id:crimson_stairs,count:1,components:{custom_name:'[{"text":"Crimson Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:warped_stairs run summon item ~ ~0.5 ~ {Item:{id:warped_stairs,count:1,components:{custom_name:'[{"text":"Warped Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:mangrove_stairs run summon item ~ ~0.5 ~ {Item:{id:mangrove_stairs,count:1,components:{custom_name:'[{"text":"Mangrove Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:bamboo_stairs run summon item ~ ~0.5 ~ {Item:{id:bamboo_stairs,count:1,components:{custom_name:'[{"text":"Bamboo Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s if block ~ ~ ~ minecraft:cherry_stairs run summon item ~ ~0.5 ~ {Item:{id:cherry_stairs,count:1,components:{custom_name:'[{"text":"Cherry Chair","italic":false,"color":"green"}]',custom_data:{type:chair}}}}
execute if score #bool test matches 1 at @s run setblock ~ ~ ~ minecraft:air
execute if score #bool test matches 1 run data remove entity @s interaction