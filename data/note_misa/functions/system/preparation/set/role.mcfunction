scoreboard players set @a[sort=random,limit=1,scores={DNRole=0}] DNRole 5
scoreboard players set @a[scores={DNRole=2}] misa 0
scoreboard players set @a[scores={DNRole=5}] misa 0
execute as @a store result score @s misa if entity @a[scores={misa=0}]
