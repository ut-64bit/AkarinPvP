#> akarin_pvp:core/hueoni/item/red_powder/check
# @within advancement akarin_pvp:hueoni/red_powder

advancement grant @s only akarin_pvp:pvp_adv/hueoni/check/used_special_item

# エフェクト
    execute if entity @e[type=item,nbt={Item:{tag:{Type:red}}}] run function akarin_pvp:core/hueoni/item/red_powder/effect

# kill
    execute as @e[type=item] if data entity @s {Item:{tag:{Type:red}}} run kill @s

# 同時使用
    execute if score @s pvp.used_red_powder matches 2.. run function akarin_pvp:core/hueoni/item/red_powder/return_item

# 再使用処理
    scoreboard players set @s pvp.used_red_powder 0
    advancement revoke @s only akarin_pvp:hueoni/red_powder