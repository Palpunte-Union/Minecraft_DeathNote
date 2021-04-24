gamemode adventure @a[gamemode=!spectator]
title @a reset
clear @a
effect clear @a
tag @p add DN
scoreboard objectives add misa dummy
execute unless entity @a[tag=misaDN] run scoreboard players set #Note misa 0
execute if entity @a[tag=misaDN] run scoreboard players set #Note misa 1
tag @a[tag=misaDN] remove misaDN

function note:system/preparation/set/gamerules
function note:system/preparation/set/difficulty
function note:system/preparation/set/teams
function note:system/preparation/set/scoreboards
execute if score #Note misa matches 1 run function note_misa:system/preparation/set/scoreboards
function note:system/preparation/set/roles
function note:system/preparation/set/tellraw
execute if score #Note misa matches 1 run function note_misa:system/preparation/set/tellraw
function note:system/preparation/set/title
execute if score #Note misa matches 1 run function note_misa:system/preparation/set/title
function note:system/preparation/set/tags
scoreboard players set #Note DNPhase 1