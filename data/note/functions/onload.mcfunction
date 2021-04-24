tellraw @a "\n------------------------------------\n"
tellraw @a [{"translate":"%s×%s__ver_1.0 made by %s","with":[{"text":"Minecraft","color":"dark_green","bold":true},{"text":"DeathNote","color":"dark_red","bold":true},{"text":"Soukun_Palpunte","color":"gold","bold":false}]}]
tellraw @a [{"translate":"\n%sでミサなし版デスノートを始めることができます","with": [{"text":"/function #note:start","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #note:start"}}]}]
tellraw @a [{"translate":"\n%sでミサあり版デスノートを始めることができます","with": [{"text":"/function #note_misa:start","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #note_misa:start"}}]}]
tellraw @a [{"translate":"\n%sでゲームを緊急停止させます","with": [{"text":"/function #note:stop","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #note:stop"}}]}]
tellraw @a "\n------------------------------------\n"