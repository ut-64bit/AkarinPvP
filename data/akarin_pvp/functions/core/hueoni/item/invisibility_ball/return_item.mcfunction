#> akarin_pvp:core/hueoni/item/invisibility_ball/return_item
# @within function akarin_pvp:core/hueoni/item/invisibility_ball/*

# スコア減らす
    scoreboard players remove @s PvP.Used.InvisibilityBall 1

# アイテム渡す
    give @s slime_ball{Type:invisibility,display:{Name:'{"text":"透明化ボール","color":"green","bold":true,"italic":true}',Lore:['{"text":"10秒間透明になれる","color":"dark_purple"}']}} 1

# 再起
    execute if score @s PvP.Used.InvisibilityBall matches 2.. run function akarin_pvp:core/hueoni/item/invisibility_ball/return_item