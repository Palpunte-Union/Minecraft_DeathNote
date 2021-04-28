scoreboard players remove @s CanDC 1
scoreboard players remove @s giveDC 1
execute if score @s CanDC matches 0 run clear @s enchanted_book
execute as @a if score @s PlayerNumber = @p[scores={DNRole=6}] Document run tag @s add Documented
execute as @a[scores={DNRole=2..},tag=Documented] run tellraw @a[scores={DNRole=6}] [{"selector":"@s"},{"text":"はキラではありません"}]
execute as @a[scores={DNRole=1},tag=Documented] run tellraw @a[scores={DNRole=6}] [{"selector":"@s","color":"dark_red"},{"text":"はキラです","color":"dark_red"}]
tag @a[tag=Documented] remove Documented
scoreboard players reset @s Document