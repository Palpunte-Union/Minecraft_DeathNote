tellraw @a[scores={DNRole=6}] [{"text":"あなたは"},{"text":"Ｌ","color":"green"},{"text":"です。","color":"white"}]
execute unless score #Note misa matches 1 run tellraw @a[scores={DNRole=2}] [{"text":"あなたは"},{"text":"死神","color":"light_purple"},{"text":"です。","color":"white"}]
execute if score #Note misa matches 1 run tellraw @a[scores={DNRole=2,misa=1}] [{"text":"あなたは"},{"text":"レム","color":"light_purple"},{"text":"です。","color":"white"}]
execute if score #Note misa matches 1 run tellraw @a[scores={DNRole=2,misa=2}] [{"text":"あなたは"},{"text":"リューク","color":"light_purple"},{"text":"です。","color":"white"}]
tellraw @a[scores={DNRole=1}] [{"text":"あなたは"},{"text":"キラ","color":"red"},{"text":"です。","color":"white"}]
tellraw @a[scores={DNRole=7}] [{"text":"あなたは"},{"text":"Ｌが分かる警察","color":"aqua"},{"text":"です。","color":"white"}]
tellraw @a[scores={DNRole=8}] [{"text":"あなたは"},{"text":"警察","color":"blue"},{"text":"です。","color":"white"}]
execute unless score #Note misa matches 1 run tellraw @a[scores={DNRole=1}] [{"selector":"@a[scores={DNRole=2}]"},{"translate":"が%sです","with":[{"text":"死神","italic":false,"color":"light_purple"}]}]
execute if score #Note misa matches 1 as @a[scores={DNRole=2,misa=2}] run tellraw @a[scores={DNRole=1}] [{"selector":"@s"},{"translate":"が%sです","with":[{"text":"リューク","italic":false,"color":"light_purple"}]}]
execute if score #Note misa matches 1 as @a[scores={DNRole=2,misa=1}] run tellraw @a[scores={DNRole=1}] [{"selector":"@s"},{"translate":"が%sです","with":[{"text":"レム","italic":false,"color":"light_purple"}]}]
tellraw @a[scores={DNRole=2}] [{"selector":"@a[scores={DNRole=1}]"},{"translate":"が%sです","with":[{"text":"キラ","italic":false,"color":"red"}]}]
