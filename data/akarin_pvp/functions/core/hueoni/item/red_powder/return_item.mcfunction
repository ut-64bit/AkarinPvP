#> akarin_pvp:core/hueoni/item/red_powder/return_item
# @within function akarin_pvp:core/hueoni/item/red_powder/*

# スコア減らす
    scoreboard players remove @s pvp.used_red_powder 1

# アイテム渡す
    give @s minecraft:redstone{Type:red,display:{Name:'{"text":"逃走者の本気","color":"red","bold":true,"italic":true}',Lore:['{"text":"10秒間早くなる"}']}} 1

# 再起
    execute if score @s pvp.used_red_powder matches 2.. run function akarin_pvp:core/hueoni/item/red_powder/return_item