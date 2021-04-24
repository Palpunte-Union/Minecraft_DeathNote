title @a[scores={DNRole=6}] title [{"text":"正義は必ず勝つ"}]
title @a[scores={DNRole=6}] subtitle {"translate":"(%s陣営)","with":[{"text":"Ｌ","color": "green"}]}
execute if score #Note misa matches 0 run title @a[scores={DNRole=2}] title [{"text":"あなたは"},{"text":"死神","color":"light_purple"},{"text":"です。","color":"white"}]
execute if score #Note misa matches 1 run title @a[scores={DNRole=2,misa=1}] title [{"text":"あなたは"},{"text":"レム","color":"light_purple"},{"text":"です。","color":"white"}]
execute if score #Note misa matches 1 run title @a[scores={DNRole=2,misa=2}] title [{"text":"あなたは"},{"text":"リューク","color":"light_purple"},{"text":"です。","color":"white"}]
title @a[scores={DNRole=2}] subtitle {"translate":"(%s陣営)","with":[{"text":"キラ","color": "red"}]}
title @a[scores={DNRole=1}] title [{"text":"僕は新世界の神となる"}]
title @a[scores={DNRole=1}] subtitle {"translate":"(%s陣営)","with":[{"text":"キラ","color": "red"}]}
title @a[scores={DNRole=7}] title [{"text":"あなたは"},{"text":"Ｌが分かる警察","color":"aqua"},{"text":"です。","color":"white"}]
title @a[scores={DNRole=7}] subtitle {"translate":"(%s陣営)","with":[{"text":"Ｌ","color": "green"}]}
title @a[scores={DNRole=8}] title [{"text":"あなたは"},{"text":"警察","color":"blue"},{"text":"です。","color":"white"}]
title @a[scores={DNRole=8}] subtitle {"translate":"(%s陣営)","with":[{"text":"Ｌ","color": "green"}]}
