#> akarin_pvp:core/hueoni/item/glow_powder/return_item
# @within function akarin_pvp:core/hueoni/item/glow_powder/*

# スコア減らす
    scoreboard players remove @s pvp.used_glow_powder 1

# アイテム渡す
    give @s minecraft:glowstone_dust{Type:glow,display:{Name:'{"text":"魔法の粉","color":"yellow","bold":true,"italic":true}',Lore:['{"text":"捨てると逃走者が5秒間発光します","color":"dark_purple"}']}} 1

# 再起
    execute if score @s pvp.used_glow_powder matches 2.. run function akarin_pvp:core/hueoni/item/glow_powder/return_item