#> akarin_pvp:core/hueoni/item/glow_powder/check
# @within advancement akarin_pvp:hueoni/glow_powder

advancement grant @s only akarin_pvp:pvp_adv/hueoni/check/used/special_item

# エフェクト
    execute if entity @e[type=item,nbt={Item:{tag:{Type:glow}}}] run function akarin_pvp:core/hueoni/item/glow_powder/effect

# kill
    execute as @e[type=item] if data entity @s {Item:{tag:{Type:glow}}} run kill @s

# 同時使用
    execute if score @s pvp.used_glow_powder matches 2.. run function akarin_pvp:core/hueoni/item/glow_powder/return_item

# 再使用処理
    scoreboard players set @s pvp.used_glow_powder 0
    advancement revoke @s only akarin_pvp:hueoni/glow_powder