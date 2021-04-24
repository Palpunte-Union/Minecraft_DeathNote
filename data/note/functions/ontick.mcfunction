execute if entity @a[tag=DN] if score #Note DNPhase matches 2 run function note:system/ongame/ingamerunnable
execute if entity @a[tag=DN] if score #Note DNPhase matches 1 run function note:system/preparation/countdown
execute at @e[type=armor_stand,tag=chain,tag=!put] as @a[distance=..5] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute at @e[type=armor_stand,tag=chain,tag=!put] as @a[distance=..5] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute as @e[type=armor_stand,tag=chain,tag=!put] run tag @s add put