#> akarin_pvp:core/hueoni/item/invisibility_ball/check
# @within advancement akarin_pvp:hueoni/invisibility_ball

advancement grant @s only akarin_pvp:pvp_adv/hueoni/check/used_special_item

# エフェクト
    execute if entity @e[type=item,nbt={Item:{tag:{Type:invisibility}}}] run function akarin_pvp:core/hueoni/item/invisibility_ball/effect

# kill
    execute as @e[type=item] if data entity @s {Item:{tag:{Type:invisibility}}} run kill @s

# 同時使用
    execute if score @s pvp.used_invisibility_ball matches 2.. run function akarin_pvp:core/hueoni/item/invisibility_ball/return_item

# 再使用処理
    scoreboard players set @s pvp.used_invisibility_ball 0
    advancement revoke @s only akarin_pvp:hueoni/invisibility_ball