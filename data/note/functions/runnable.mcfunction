execute if entity @a[tag=DN] run function note:ingamerunnable

execute at @e[type=armor_stand,tag=chain,tag=!put] as @a[distance=..5] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute at @e[type=armor_stand,tag=chain,tag=!put] as @a[distance=..5] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute as @e[type=armor_stand,tag=chain,tag=!put] run tag @s add put