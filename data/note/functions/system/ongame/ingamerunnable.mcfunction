execute if score #Note keisatu_win matches ..0 run scoreboard players add #Note L_endtime 1
execute if score #Note kira_win matches ..0 run scoreboard players add #Note kira_endtime 1
execute if score #Note L_endtime matches 20 run function note:system/finish/end_winner_eru
execute if score #Note kira_endtime matches 20 run function note:system/finish/end_winner_kira
function note:system/ongame/ongame
