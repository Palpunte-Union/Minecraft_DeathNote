gamemode adventure @a
clear @a
effect clear @a
tag @p add DN

gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule keepInventory false
gamerule logAdminCommands true
gamerule announceAdvancements false
difficulty peaceful

team add DN {"text":"デスノート","bold": true,"color": "red"}
team modify DN nametagVisibility never
team modify DN friendlyFire true

tag @a remove kira
execute unless entity @a[tag=misa] run tag @a remove sinigami1212
tag @a remove L
tag @a remove satu
tag @a remove wakarusatu
tag @a[sort=random,limit=1,tag=!misa,tag=!sinigami1212] add kira
execute unless entity @a[tag=misa] run tag @a[sort=random,limit=1,tag=!kira,tag=!misa] add sinigami1212
tag @a[sort=random,limit=1,tag=!kira,tag=!sinigami1212,tag=!misa] add L
tag @a[tag=!kira,tag=!sinigami1212,tag=!L,tag=!misa] add satu
tag @a[sort=random,limit=1,tag=satu,tag=!misa] add wakarusatu
tag @a[tag=!satu,tag=!wakarusatu] add jingai
tag @a[tag=wakarusatu,tag=!misa] remove satu

team join DN @a

## invisible
scoreboard objectives add usedsnow minecraft.used:minecraft.snowball
scoreboard objectives add invi1 dummy
scoreboard objectives add invi2 dummy
scoreboard objectives add invitime dummy
scoreboard objectives add kaijo1 custom:sneak_time
scoreboard objectives add kaijo2 dummy
scoreboard objectives add givecount dummy

## DeathCount & KillCount
scoreboard objectives add deathnote deathCount
scoreboard objectives add keisatuKill playerKillCount
scoreboard objectives add keisatuDeath deathCount

## kira and sinigami team system
scoreboard objectives add apple minecraft.dropped:minecraft.apple
scoreboard objectives add deathT minecraft.dropped:minecraft.paper
scoreboard objectives add note trigger
scoreboard objectives add killnote trigger
scoreboard objectives add SelectNote dummy
scoreboard objectives add killtime dummy

## Player Number
scoreboard objectives add PlayerNumber dummy
scoreboard objectives add Document trigger

scoreboard objectives add kira_win dummy
scoreboard objectives add keisatu_win dummy

scoreboard objectives add papertime dummy
scoreboard objectives add kira_endtime dummy
scoreboard objectives add L_endtime dummy

scoreboard objectives add LastKill playerKillCount
scoreboard objectives add LastDeath dummy

## chain
scoreboard objectives add chain_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add chain_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add chaintime dummy

##start note
scoreboard objectives add start_note dummy
scoreboard players set #Note start_note 600

## set score
scoreboard players set #Note invitime 20
scoreboard players set #Note invi1 2400
scoreboard players set @a PlayerNumber 0
execute as @a store result score @s PlayerNumber if entity @a[scores={PlayerNumber=0}]
scoreboard players set @a[tag=kira] note -1
scoreboard players set #Note deathnote 1
scoreboard players set #Note kira_win 1
scoreboard players set #Note keisatu_win 1
scoreboard players set @a killtime 0
scoreboard players set #Note kira_endtime 0
scoreboard players set #Note L_endtime 0
scoreboard players set #Note papertime 1
scoreboard players set @a deathnote 0

## tellraw
tellraw @a[tag=L] [{"text":"あなたは"},{"text":"Ｌ","color":"green"},{"text":"です。","color":"white"}]
execute unless entity @a[tag=misa] run tellraw @a[tag=sinigami1212] [{"text":"あなたは"},{"text":"死神","color":"light_purple"},{"text":"です。","color":"white"}]
execute if entity @a[tag=misa] run tellraw @a[tag=sinigami1212,scores={misa=1}] [{"text":"あなたは"},{"text":"レム","color":"light_purple"},{"text":"です。","color":"white"}]
execute if entity @a[tag=misa] run tellraw @a[tag=sinigami1212,scores={misa=2}] [{"text":"あなたは"},{"text":"リューク","color":"light_purple"},{"text":"です。","color":"white"}]
tellraw @a[tag=kira] [{"text":"あなたは"},{"text":"キラ","color":"red"},{"text":"です。","color":"white"}]
tellraw @a[tag=wakarusatu] [{"text":"あなたは"},{"text":"Ｌが分かる警察","color":"aqua"},{"text":"です。","color":"white"}]
tellraw @a[tag=!wakarusatu,tag=satu] [{"text":"あなたは"},{"text":"警察","color":"blue"},{"text":"です。","color":"white"}]
execute unless entity @a[tag=misa] run tellraw @a[tag=kira] [{"selector":"@a[tag=sinigami1212]"},{"translate":"が%sです","with":[{"text":"死神","italic":false,"color":"light_purple"}]}]
execute if entity @a[tag=misa] if entity @a[tag=sinigami1212,scores={misa=2}] run tellraw @a[tag=kira] [{"selector":"@a[tag=sinigami1212]"},{"translate":"が%sです","with":[{"text":"リューク","italic":false,"color":"light_purple"}]}]
execute if entity @a[tag=misa] if entity @a[tag=sinigami1212,scores={misa=1}] run tellraw @a[tag=kira] [{"selector":"@a[tag=sinigami1212]"},{"translate":"が%sです","with":[{"text":"レム","italic":false,"color":"light_purple"}]}]
tellraw @a[tag=sinigami1212] [{"selector":"@a[tag=kira]"},{"translate":"が%sです","with":[{"text":"キラ","italic":false,"color":"red"}]}]

## title
title @a[tag=L] title [{"text":"正義は必ず勝つ"}]
execute unless entity @a[tag=misa] run title @a[tag=sinigami1212] title [{"text":"あなたは"},{"text":"死神","color":"light_purple"},{"text":"です。","color":"white"}]
execute if entity @a[tag=misa] run title @a[tag=sinigami1212,scores={misa=1}] title [{"text":"あなたは"},{"text":"レム","color":"light_purple"},{"text":"です。","color":"white"}]
execute if entity @a[tag=misa] run title @a[tag=sinigami1212,scores={misa=2}] title [{"text":"あなたは"},{"text":"リューク","color":"light_purple"},{"text":"です。","color":"white"}]
title @a[tag=kira] title [{"text":"僕は新世界の神となる"}]
title @a[tag=wakarusatu] title [{"text":"あなたは"},{"text":"Ｌが分かる警察","color":"aqua"},{"text":"です。","color":"white"}]
title @a[tag=!wakarusatu,tag=satu] title [{"text":"あなたは"},{"text":"警察","color":"blue"},{"text":"です。","color":"white"}]

scoreboard players set @a SelectNote 0
execute as @a store result score @s SelectNote if entity @a[scores={SelectNote=0}]
gamemode spectator @a[scores={PlayerNumber=21..}]