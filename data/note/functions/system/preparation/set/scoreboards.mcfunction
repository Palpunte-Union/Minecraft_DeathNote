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
scoreboard objectives add CanDC dummy
scoreboard objectives add giveDC dummy
scoreboard objectives add DropDC dropped:enchanted_book
scoreboard objectives add RemovedDC dummy
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
## Role
scoreboard objectives add DNRole dummy

## set score

# start count
scoreboard players set #Note start_note 600
# invisible time
scoreboard players set #Note invitime 20
scoreboard players set #Note invi1 2400
# PlayerNumber
scoreboard players set @a PlayerNumber 0
execute as @a store result score @s PlayerNumber if entity @a[scores={PlayerNumber=0}]
# kira note
scoreboard players set @a[tag=kira] note -1
scoreboard players set @a killtime 0
# game set count
scoreboard players set #Note kira_win 1
scoreboard players set #Note keisatu_win 1
scoreboard players set #Note kira_endtime 0
scoreboard players set #Note L_endtime 0
# paper give count 
scoreboard players set #Note papertime 1
# death count
scoreboard players set @a deathnote 0
# SelectNote
scoreboard players set @a SelectNote 0
execute as @a store result score @s SelectNote if entity @a[scores={SelectNote=0}]
gamemode spectator @a[scores={PlayerNumber=21..}]
# Role
scoreboard players set @a DNRole 0
# Phase
scoreboard objectives add DNPhase dummy