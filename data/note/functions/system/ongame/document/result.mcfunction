scoreboard players remove @s CanDC 1
scoreboard players remove @s giveDC 1
clear @s enchanted_book
scoreboard players reset @s Document
execute as @a if score @s PlayerNumber = @p[scores={DNRole=6}] Document run tag @s add Documented
execute as @a[scores={DNRole=2..8},tag=Documented] run tellraw @a[scores={DNRole=6}] [{"selector":"@s"},{"text":"はキラではありません"}]
execute as @a[scores={DNRole=1},tag=Documented] run tellraw @a[scores={DNRole=6}] [{"selector":"@s","color":"dark_red"},{"text":"はキラです","color":"dark_red"}]
