title @a[tag=L] title [{"text":"正義は必ず勝つ"}]
execute unless entity @a[tag=misa] run title @a[tag=sinigami1212] title [{"text":"あなたは"},{"text":"死神","color":"light_purple"},{"text":"です。","color":"white"}]
execute if entity @a[tag=misa] run title @a[tag=sinigami1212,scores={misa=1}] title [{"text":"あなたは"},{"text":"レム","color":"light_purple"},{"text":"です。","color":"white"}]
execute if entity @a[tag=misa] run title @a[tag=sinigami1212,scores={misa=2}] title [{"text":"あなたは"},{"text":"リューク","color":"light_purple"},{"text":"です。","color":"white"}]
title @a[tag=kira] title [{"text":"僕は新世界の神となる"}]
title @a[tag=wakarusatu] title [{"text":"あなたは"},{"text":"Ｌが分かる警察","color":"aqua"},{"text":"です。","color":"white"}]
title @a[tag=!wakarusatu,tag=satu] title [{"text":"あなたは"},{"text":"警察","color":"blue"},{"text":"です。","color":"white"}]