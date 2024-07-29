summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["chair"], response:1b, width:1.02, height:1.02}
summon minecraft:interaction ~0.5 ~0.5 ~0.5 {Tags:["chair_sit"], response:1b, width:0.25, height:0.25}
particle happy_villager ~0.5 ~0.5 ~0.5 0 0 0 0 1
scoreboard players set #bool chairs_logic_var 1
