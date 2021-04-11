execute if score #Note start_note matches 0 run function note:document
execute if score #Note keisatu_win matches ..0 run scoreboard players add #Note L_endtime 1
execute if score #Note kira_win matches ..0 run scoreboard players add #Note kira_endtime 1
execute if score #Note L_endtime matches 20 run function note:end_winner_eru
execute if score #Note kira_endtime matches 20 run function note:end_winner_kira

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

execute if score #Note start_note matches 0 run loot give @a[tag=!jingai] loot note:item/sword/keisatu_sword
execute if score #Note start_note matches 0 run execute unless entity @a[tag=misa] run loot give @a[tag=jingai] loot note:item/sword/jingai_sword
execute if score #Note start_note matches 0 run execute if entity @a[tag=misa] run loot give @a[tag=jingai] loot note_misa:jingai_sword
execute if score #Note start_note matches 0 run loot give @a[tag=!L] loot note:item/other_items/quartz
execute if score #Note start_note matches 0 run loot give @a[tag=kira] loot note:item/other_items/kira_apple
execute if score #Note start_note matches 0 run loot give @a[tag=kira] loot note:item/other_items/kira_paper
execute if score #Note start_note matches 0 run execute if entity @a[scores={PlayerNumber=10..}] run loot give @a[tag=kira] loot note:item/other_items/kira_paper
execute if score #Note start_note matches 0 run execute if entity @a[scores={PlayerNumber=20..}] run loot give @a[tag=kira] loot note:item/other_items/kira_paper
execute if score #Note start_note matches 0 run loot replace entity @a[tag=sinigami1212] hotbar.8 loot note:item/other_items/sinigami_snowball
execute if score #Note start_note matches 0 run loot give @a[tag=wakarusatu] loot note:item/other_items/wakaru_compass
execute if score #Note start_note matches ..0 run function note:ongame
execute if score #Note start_note matches 0 run scoreboard players enable @a[tag=L] Document
execute if score #Note start_note matches 0 run loot give @a[tag=!sinigami1212,tag=!misa,sort=random,limit=1] loot note:item/other_items/chain