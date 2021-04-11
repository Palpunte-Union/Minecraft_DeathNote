tag @a remove kira
execute unless entity @a[tag=misa] run tag @a remove sinigami1212
tag @a remove L
tag @a remove satu
tag @a remove wakarusatu
tag @a[sort=random,limit=1,tag=!misa,tag=!sinigami1212] add kira
execute unless entity @a[tag=misa] run tag @a[sort=random,limit=1,tag=!kira,tag=!misa] add sinigami1212
tag @a[sort=random,limit=1,tag=!kira,tag=!sinigami1212,tag=!misa] add L
tag @a[tag=!kira,tag=!sinigami1212,tag=!L,tag=!misa] add satu
tag @a[sort=random,limit=1,tag=satu,tag=!misa] add wakarusatu
tag @a[tag=!satu,tag=!wakarusatu] add jingai
tag @a[tag=wakarusatu,tag=!misa] remove satu