execute if entity @a[tag=DN] run tellraw @a "\n------------------------------------\n"
execute if entity @a[tag=DN] run tellraw @a [{"translate":"%s×%s__ver_1.0 made by %s","with":[{"text":"Minecraft","color":"dark_green","bold":true},{"text":"DeathNote","color":"dark_red","bold":true},{"text":"Soukun_Palpunte","color":"gold","bold":false}]}]
execute if entity @a[tag=DN] run tellraw @a "\nゲームを緊急停止させました"
execute if entity @a[tag=DN] run tellraw @a "\n------------------------------------\n"
execute if entity @a[tag=DN] if score #Note DNPhase matches 2 run function note:system/finish/result
execute if entity @a[tag=DN] run function note:system/finish/end