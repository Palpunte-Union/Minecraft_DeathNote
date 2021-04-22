effect give @a[scores={usedsnow=1,DNRole=2}] minecraft:invisibility 1000000 10 true
#execute at @a[scores={usedsnow=1,DNRole=2}] run kill @e[type=minecraft:snowball,distance=..5]
scoreboard players set @a[scores={usedsnow=1,DNRole=2}] usedsnow 2
scoreboard players add @a[scores={usedsnow=2,DNRole=2}] givecount 1
loot replace entity @a[scores={givecount=1200..,DNRole=2}] hotbar.8 loot note:item/other_items/sinigami_snowball
execute as @a[scores={givecount=1200..,DNRole=2}] run scoreboard players set @s usedsnow 0
execute as @a[scores={givecount=1200..,DNRole=2}] run scoreboard players set @s givecount 0

## invisible timer
scoreboard players operation #Note invi2 = #Note invi1
scoreboard players operation #Note invi2 /= #Note invitime
execute as @a[scores={DNRole=2},nbt={ActiveEffects:[{Id:14b,Amplifier:10b}]}] run title @s actionbar {"score":{"name":"#Note","objective":"invi2"}}
execute if score #Note invi1 matches 0.. if entity @a[scores={DNRole=2},nbt={ActiveEffects:[{Id:14b,Amplifier:10b}]}] run scoreboard players remove #Note invi1 1
execute if score #Note invi1 matches ..0 run effect clear @a[scores={DNRole=2}] minecraft:invisibility

## invisible sneak kaijo
execute as @a[scores={DNRole=2}] run scoreboard players add @s[scores={kaijo1=1..}] kaijo2 1
execute as @a[scores={DNRole=2}] if score @s kaijo1 < @s kaijo2 run effect clear @s minecraft:invisibility
execute as @a[scores={DNRole=2}] if score @s kaijo1 < @s kaijo2 run scoreboard players set @s kaijo1 0
execute as @a[scores={DNRole=2}] if score @s kaijo1 < @s kaijo2 run scoreboard players set @s kaijo2 0