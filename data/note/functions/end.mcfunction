execute if entity @a[tag=misa] run function note_misa:end
tag @a remove kira
tag @a remove L
tag @a remove wakarusatu
tag @a remove satu
tag @a remove sinigami1212
tag @a remove DN
tag @a remove jingai
tag @a remove SelectNote
tag @a remove note

gamemode adventure @a

kill @e[type=armor_stand,tag=DN]
kill @e[type=item]

clear @a
effect clear @a

team remove kira
team remove L
team remove Lwaka
team remove satu
team remove sinigami

## invisible
scoreboard objectives remove usedsnow
scoreboard objectives remove invi1
scoreboard objectives remove invi2
scoreboard objectives remove invitime
scoreboard objectives remove kaijo1
scoreboard objectives remove kaijo2
scoreboard objectives remove givecount

## DeathCount & KillCount
scoreboard objectives remove deathnote
scoreboard objectives remove kira_win
scoreboard objectives remove keisatu_win
scoreboard objectives remove keisatuKill
scoreboard objectives remove keisatuDeath
scoreboard objectives remove LastKill
scoreboard objectives remove LastDeath

## kira and sinigami team system
scoreboard objectives remove apple
scoreboard objectives remove deathT
scoreboard objectives remove note
scoreboard objectives remove killnote
scoreboard objectives remove SelectNote
scoreboard objectives remove killtime
scoreboard objectives remove papertime

## Player Number
scoreboard objectives remove PlayerNumber
scoreboard objectives remove Document

scoreboard objectives remove kira_endtime
scoreboard objectives remove L_endtime

##chain
scoreboard objectives remove chain_dealt
scoreboard objectives remove chain_taken
scoreboard objectives remove chaintime

## start note
scoreboard objectives remove start_note