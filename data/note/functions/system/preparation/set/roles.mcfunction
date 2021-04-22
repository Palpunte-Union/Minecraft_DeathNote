scoreboard players set @a[sort=random,limit=1,scores={DNRole=0}] DNRole 1
scoreboard players set @a[sort=random,limit=1,scores={DNRole=0}] DNRole 2
scoreboard players set @a[sort=random,limit=1,scores={DNRole=0}] DNRole 6
scoreboard players set @a[sort=random,limit=1,scores={DNRole=0}] DNRole 7
function note_misa:system/preparation/set/role
scoreboard players set @a[scores={DNRole=0}] DNRole 8
tag @a[scores={DNRole=1..6}] add jingai