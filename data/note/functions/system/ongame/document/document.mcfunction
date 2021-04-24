## crafted system
clear @s minecraft:quartz_block 1
scoreboard players set @s giveDC 1
scoreboard players add @s CanDC 1
scoreboard players enable @s Document
loot give @s[nbt=!{Inventory:[{id:"minecraft:enchanted_book"}]}] loot note:item/other_items/eru_enchanted_book