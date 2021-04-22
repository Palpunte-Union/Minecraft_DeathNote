execute if entity @p[tag=DN] run function note:system/preparation/error_start
execute unless entity @a[tag=DN] run scoreboard players set #Note misa 1
execute unless entity @a[tag=DN] run function note:system/preparation/start_waiting_time