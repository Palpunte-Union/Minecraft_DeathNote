tag @a remove misa
tag @a remove sinigami1212
tag @a[sort=random,limit=1] add misa
tag @a[sort=random,limit=1,tag=!misa] add sinigami1212
scoreboard objectives add misa dummy
scoreboard players set @a[tag=sinigami1212] misa 0
scoreboard players set @a[tag=misa] misa 0
execute as @a store result score @s misa if entity @a[scores={misa=0}]
scoreboard players set @a[tag=!sinigami1212,tag=!misa] misa 0
tag @a[tag=misa] add jingai
title @a[tag=misa] title [{"text":"あなたは"},{"text":"ミサ","color":"yellow"},{"text":"です","color":"white"}]
tellraw @a [{"selector":"@a[tag=misa]"},{"translate":"が%sです","with":[{"text":"ミサ","color": "yellow"}]}]
scoreboard objectives add misaDeath deathCount
function note:start
team join sinigami @a[tag=misa]