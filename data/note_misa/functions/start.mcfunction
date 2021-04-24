execute if entity @p[tag=DN] run function note:system/preparation/error_start
execute unless entity @a[tag=DN] run tag @p add misaDN
execute unless entity @a[tag=DN] run function note:system/preparation/start_waiting_time