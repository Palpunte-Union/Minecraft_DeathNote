scoreboard objectives add misaDeath deathCount
scoreboard players set @a[scores={DNRole=2}] misa 0
scoreboard players set @a[scores={DNRole=5}] misa 0
execute as @a store result score @s misa if entity @a[scores={misa=0}]