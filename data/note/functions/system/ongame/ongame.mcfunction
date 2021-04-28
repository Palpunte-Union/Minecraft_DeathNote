## Cpmpass
execute at @a[scores={DNRole=6}] run setworldspawn ~ ~ ~

## sinigami
execute unless score #Note misa matches 1 at @a[scores={DNRole=2},gamemode=adventure] run tag @a[scores={DNRole=5..},distance=..3,limit=1,tag=!SelectNote] add note0
execute unless score #Note misa matches 1 as @e[tag=note0] run tellraw @a[scores={DNRole=2}] {"selector":"@s","color":"light_purple"}
execute unless score #Note misa matches 1 at @e[tag=note0] run particle minecraft:portal ~ ~ ~ 0 0 0 1 500 force @a[scores={DNRole=2}]
execute unless score #Note misa matches 1 at @e[tag=note0] run particle minecraft:enchant ~ ~ ~ 0 0 0 1 500 force @a[scores={DNRole=2}]
execute if score #Note misa matches 1 at @a[scores={misa=2},gamemode=adventure] run tag @a[scores={DNRole=5..,misa=0},distance=..3,limit=1,tag=!SelectNote] add note0
execute if score #Note misa matches 1 as @e[tag=note0] run tellraw @a[scores={misa=2}] {"selector":"@s","color":"light_purple"}
execute if score #Note misa matches 1 at @e[tag=note0] run particle minecraft:portal ~ ~ ~ 0 0 0 1 500 force @a[scores={misa=2}]
execute if score #Note misa matches 1 at @e[tag=note0] run particle minecraft:enchant ~ ~ ~ 0 0 0 1 500 force @a[scores={misa=2}]
execute as @e[tag=note0] run tag @s add SelectNote
tag @e[tag=note0] remove note0
function note:system/ongame/inv

## apple
execute as @a[scores={apple=1..,DNRole=2}] run replaceitem entity @s inventory.26 minecraft:book{display:{Name:'{"text":"デスノート","italic":false}'}} 1
execute at @a[scores={apple=1..,DNRole=2}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:apple"}},distance=..5]
scoreboard players set @a[scores={apple=1..}] apple 0

## book
loot replace entity @a[scores={DNRole=1},nbt={Inventory:[{id:"minecraft:book"}]}] inventory.26 loot note:item/other_items/kira_paper
execute as @a[scores={DNRole=1},nbt={Inventory:[{id:"minecraft:book"}]}] run clear @s minecraft:book
execute if score #Note papertime matches 1..12000 run scoreboard players add #Note papertime 1
execute if score #Note papertime matches 12000 run loot replace entity @a[scores={DNRole=1}] hotbar.4 loot note:item/other_items/kira_paper

## Death Event
gamemode spectator @a[scores={deathnote=1..}]
execute as @a[scores={deathnote=1,DNRole=1}] run scoreboard players remove #Note keisatu_win 1
execute as @a[scores={deathnote=1,DNRole=6}] run scoreboard players remove #Note kira_win 1
execute as @a[scores={deathnote=1,DNRole=1}] run scoreboard players set @s LastDeath 1
execute as @a[scores={deathnote=1,DNRole=6}] run scoreboard players set @s LastDeath 1
execute unless entity @a[scores={deathnote=1,DNRole=1}] run scoreboard players set @a[scores={LastKill=1..}] LastKill 0
execute as @a[scores={keisatuKill=1..,DNRole=5..8}] if entity @a[scores={misaDeath=1..,misa=1,DNRole=5}] run function note_misa:system/ongame/misa_death
execute as @a[scores={keisatuKill=1..,DNRole=8}] if entity @a[scores={keisatuDeath=1..,DNRole=8}] run function note:system/ongame/keisatu_death
scoreboard players set @a[scores={keisatuKill=1..}] keisatuKill 0
scoreboard players set @a[scores={keisatuDeath=1..}] keisatuDeath 0
execute if score #Note misa matches 1 run scoreboard players set @a[scores={misaDeath=1..}] misaDeath 0

## kira Event
execute as @a[scores={deathT=1..}] run tag @a[scores={deathT=1..}] add note
function note:system/ongame/kira_event
scoreboard players set @e[scores={deathT=1..}] deathT 0
## kill time
scoreboard players set @a[scores={killnote=2}] killtime 1
scoreboard players add @a[scores={killtime=1..}] killtime 1
execute at @a[scores={killtime=1..}] run particle dust 0.682 0 1 1 ~ ~ ~ 0.5 0.5 0.5 1 1 force @a[scores={DNRole=1}]
execute as @a[scores={killtime=800..}] run trigger killnote set 3

## kira kill effect
execute as @a[tag=SelectNote] if score @s SelectNote = @p[scores={killnote=3,DNRole=1}] note run tag @s add kill
execute as @a[scores={killnote=3,DNRole=1}] unless entity @a[scores={killtime=800..}] run tellraw @s [{"selector":"@a[tag=kill]","color": "white"},{"text":" 今すぐに死亡","color":"white"}]
execute as @a[tag=SelectNote] if score @s SelectNote = @p[scores={killnote=2,DNRole=1}] note run tellraw @a[scores={DNRole=1}] [{"selector":"@s","color": "white"},{"text":" 40秒後に死亡","color":"white"}]
execute at @e[tag=kill] run particle minecraft:nautilus ~ ~1.5 ~ 0 0 0 3 500
execute at @e[tag=kill] run particle minecraft:squid_ink ~ ~1.5 ~ 1 1 1 10 100
execute as @e[tag=kill] run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 2 1
execute as @e[tag=kill] run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 2 1
scoreboard players set @a[scores={killtime=800..}] killtime 0
execute if entity @a[tag=kill] run scoreboard players set @a[scores={DNRole=1}] LastKill 1
kill @e[tag=kill]
scoreboard players set @a[scores={killnote=3}] note -1
execute if entity @a[scores={killnote=1..}] run scoreboard players set @a killnote 0
tag @a[tag=kill] remove kill

## L Document
execute as @a[scores={DNRole=6},nbt={Inventory:[{id:"minecraft:quartz_block"}]}] run function note:system/ongame/document/document
execute as @a[scores={DNRole=6,Document=1..}] run function note:system/ongame/document/result
execute as @a[scores={DNRole=6,CanDC=1..}] run scoreboard players enable @s Document
execute as @a[scores={RemovedDC=1,DNRole=6}] run function note:system/ongame/document/message_to
execute as @a[scores={RemovedDC=1..,DNRole=6,giveDC=1..}] run loot give @s loot note:item/other_items/eru_enchanted_book
scoreboard players reset @a[scores={RemovedDC=1..,DNRole=6}] RemovedDC
scoreboard players set @a[scores={DropDC=1..,DNRole=6}] RemovedDC 1
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:enchanted_book",tag:{Tags:["DNitem"]}}}]

scoreboard players reset @a[scores={DNRole=6}] DropDC

## chain
execute if entity @a[scores={chain_dealt=1..},nbt={SelectedItem:{id:"minecraft:chain"}}] if entity @a[scores={chain_taken=1..}] run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 1 1
execute if entity @a[scores={chain_dealt=1..},nbt={SelectedItem:{id:"minecraft:chain"}}] if entity @a[scores={chain_taken=1..}] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0 1
execute if entity @a[scores={chain_dealt=1..},nbt={SelectedItem:{id:"minecraft:chain"}}] as @e[tag=Note_chain] run tp @a[scores={chain_taken=1..}] @s
execute if entity @a[scores={chain_dealt=1..},nbt={SelectedItem:{id:"minecraft:chain"}}] if entity @a[scores={chain_taken=1..}] run scoreboard players set #Note chaintime 1
execute as @a[scores={chain_dealt=1..},nbt={SelectedItem:{id:"minecraft:chain"}}] run clear @s minecraft:chain 1
execute as @a[scores={chain_dealt=1..}] run scoreboard players set @s chain_dealt 0
execute as @a[scores={chain_taken=1..}] run scoreboard players set @s chain_taken 0

execute if score #Note chaintime matches 1..8400 run scoreboard players add #Note chaintime 1
execute if score #Note chaintime matches 6000..8380 at @e[type=minecraft:armor_stand,tag=Note_door_open] run setblock ~ ~2 ~ minecraft:redstone_block
execute if score #Note chaintime matches 8400.. at @e[type=minecraft:armor_stand,tag=Note_door_open] run setblock ~ ~2 ~ minecraft:stone_bricks
execute if score #Note chaintime matches 8400.. run scoreboard players set #Note chaintime 0
