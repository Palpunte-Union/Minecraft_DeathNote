tellraw @a [{"text":"[キラ]","color":"red","bold":true},{"selector":"@a[scores={DNRole=1}]","color":"white","bold":false}]
execute unless score #Note misa matches 1 run tellraw @a [{"text":"[死神]","color":"light_purple","bold":true},{"selector":"@a[tag=sinigami1212]","color":"white","bold":false}]
execute if score #Note misa matches 1 as @a[scores={DNRole=2,misa=1}] run tellraw @a [{"text":"[レム]","color":"light_purple","bold":true},{"selector":"@s","color":"white","bold":false}]
execute if score #Note misa matches 1 as @a[scores={DNRole=2,misa=2}] run tellraw @a [{"text":"[リューク]","color":"light_purple","bold":true},{"selector":"@s","color":"white","bold":false}]
execute as @a[tag=misa] run tellraw @a [{"text":"[ミサ]","color":"yellow","bold":true},{"selector":"@a[scores={DNRole=5}]","color":"white","bold":false}]
tellraw @a [{"text":"\n[L]","color":"green","bold":true},{"selector":"@a[scores={DNRole=6}]","color":"white","bold":false},{"text":"\n[Lが分かる警察] ","color":"aqua","bold":true},{"selector":"@a[scores={DNRole=7}]","color":"white","bold":false},{"text":"\n[警察]","color":"blue","bold":true},{"selector":"@a[scores={DNRole=8}]","color":"white","bold":false}]
tellraw @a "\n生存者"
tellraw @a {"selector":"@a[scores={deathnote=0}]"}
tellraw @a "\n最終キルログ"
execute if entity @a[scores={LastKill=1..}] if entity @a[scores={LastDeath=1..}] run tellraw @a [{"selector":"@a[scores={LastKill=1..}]","color":"green"},{"text":" ⇒ ","color":"white"},{"selector":"@a[scores={LastDeath=1..}]","color": "red"}]
execute unless entity @a[scores={LastKill=1..}] if entity @a[scores={LastDeath=1..}] run tellraw @a [{"selector":"@a[scores={LastDeath=1..}]","color":"green"},{"text":" ⇒ ","color":"white"},{"selector":"@a[scores={LastDeath=1..}]","color": "red"}]
