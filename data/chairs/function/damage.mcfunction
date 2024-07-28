scoreboard players set #bool current_damage 0
execute store result score #damage current_damage run data get entity @s SelectedItem.components."minecraft:damage"
execute store result storage chairs:macro damage.value int 1 run scoreboard players add #damage current_damage 1
function chairs:update_damage with storage chairs:macro damage