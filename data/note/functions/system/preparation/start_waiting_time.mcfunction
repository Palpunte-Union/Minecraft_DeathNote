gamemode adventure @a[gamemode=!spectator]
clear @a
effect clear @a
tag @p add DN

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
