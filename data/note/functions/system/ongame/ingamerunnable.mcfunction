execute if score #Note keisatu_win matches ..0 run scoreboard players add #Note L_endtime 1
execute if score #Note kira_win matches ..0 run scoreboard players add #Note kira_endtime 1
execute if score #Note L_endtime matches 20 run function note:system/finish/end_winner_eru
execute if score #Note kira_endtime matches 20 run function note:system/finish/end_winner_kira

execute if score #Note start_note matches 0.. run scoreboard players remove #Note start_note 1
execute if score #Note start_note matches 100 run title @a title " "
execute if score #Note start_note matches 100 run title @a subtitle "5"
execute if score #Note start_note matches 100 run playsound block.anvil.land master @a ~ ~ ~ 1 1 1
execute if score #Note start_note matches 80 run title @a title " "
execute if score #Note start_note matches 80 run title @a subtitle "4"
execute if score #Note start_note matches 80 run playsound block.anvil.land master @a ~ ~ ~ 1 1 1
execute if score #Note start_note matches 60 run title @a title " "
execute if score #Note start_note matches 60 run title @a subtitle "3"
execute if score #Note start_note matches 60 run playsound block.anvil.land master @a ~ ~ ~ 1 1 1
execute if score #Note start_note matches 40 run title @a title " "
execute if score #Note start_note matches 40 run title @a subtitle "2"
execute if score #Note start_note matches 40 run playsound block.anvil.land master @a ~ ~ ~ 1 1 1
execute if score #Note start_note matches 20 run title @a title " "
execute if score #Note start_note matches 20 run title @a subtitle "1"
execute if score #Note start_note matches 20 run playsound block.anvil.land master @a ~ ~ ~ 1 1 1
execute if score #Note start_note matches 0 run title @a title " "
execute if score #Note start_note matches 0 run title @a subtitle "スタート"
execute if score #Note start_note matches 0 run playsound block.anvil.use master @a ~ ~ ~ 1 1 1

execute if score #Note start_note matches 0 run tag @a[scores={DNRole=1..6}] add jingai
execute if score #Note start_note matches 0 run tag @a[scores={DNRole=2}] add nochain
execute if score #Note start_note matches 0 run tag @a[scores={DNRole=5}] add nochain
execute if score #Note start_note matches 0 run loot give @a[tag=!jingai] loot note:item/sword/keisatu_sword
execute if score #Note start_note matches 0 run execute unless score #Note misa matches 1 run loot give @a[tag=jingai] loot note:item/sword/jingai_sword
execute if score #Note start_note matches 0 run execute if score #Note misa matches 1 run loot give @a[tag=jingai] loot note_misa:jingai_sword
execute if score #Note start_note matches 0 run loot give @a[scores={DNRole=1..5}] loot note:item/other_items/quartz
execute if score #Note start_note matches 0 run loot give @a[scores={DNRole=7..8}] loot note:item/other_items/quartz
execute if score #Note start_note matches 0 run loot give @a[scores={DNRole=1}] loot note:item/other_items/kira_apple
execute if score #Note start_note matches 0 run loot give @a[scores={DNRole=1}] loot note:item/other_items/kira_paper
execute if score #Note start_note matches 0 run execute if entity @a[scores={PlayerNumber=10..}] run loot give @a[scores={DNRole=1}] loot note:item/other_items/kira_paper
execute if score #Note start_note matches 0 run execute if entity @a[scores={PlayerNumber=20..}] run loot give @a[scores={DNRole=1}] loot note:item/other_items/kira_paper
execute if score #Note start_note matches 0 run loot replace entity @a[scores={DNRole=2}] hotbar.8 loot note:item/other_items/sinigami_snowball
execute if score #Note start_note matches 0 run loot give @a[scores={DNRole=7}] loot note:item/other_items/wakaru_compass
execute if score #Note start_note matches ..0 run function note:system/ongame/ongame
execute if score #Note start_note matches 0 run scoreboard players enable @a[scores={DNRole=6}] Document
execute if score #Note start_note matches 0 run loot give @a[tag=!nochain,sort=random,limit=1] loot note:item/other_items/chain
execute if score #Note start_note matches 0 run tag @a[tag=nochain] remove nochain
execute if score #Note start_note matches 0 run tag @a[tag=jingai] remove jingai