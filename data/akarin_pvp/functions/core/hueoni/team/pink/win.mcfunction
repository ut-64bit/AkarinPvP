#> akarin_pvp:core/hueoni/team/pink/win


gamerule announceAdvancements true
scoreboard players set $if.Finish pvp.temp 1
execute as @a if score @s pvp.Playing matches 2 run title @s title {"text":"逃走者の勝利!"}
execute as @a if score @s pvp.Playing matches 2 run tellraw @s ["GM > 逃走成功者は ",{"selector":"@a[team=Pink]"}," さんです"]

# 逃走者初勝利
    execute as @a if score @s pvp.Playing matches 2 if entity @s[tag=People,advancements={akarin_pvp:pvp_adv/hueoni/win/people=false}] run advancement grant @s only akarin_pvp:pvp_adv/hueoni/win/people
    execute as @a if score @s pvp.Playing matches 2 if entity @s[tag=Esper,advancements={akarin_pvp:pvp_adv/hueoni/win/esper=false}] run advancement grant @s only akarin_pvp:pvp_adv/hueoni/win/esper
    execute as @a if score @s pvp.Playing matches 2 if entity @s[tag=Panya,advancements={akarin_pvp:pvp_adv/hueoni/win/panya=false}] run advancement grant @s only akarin_pvp:pvp_adv/hueoni/win/panya
    execute as @a if score @s pvp.Playing matches 2 if entity @s[tag=Hider,advancements={akarin_pvp:pvp_adv/hueoni/win/hider=false}] run advancement grant @s only akarin_pvp:pvp_adv/hueoni/win/hider
    execute as @a if score @s pvp.Playing matches 2 if entity @s[tag=People,advancements={akarin_pvp:pvp_adv/hueoni/check/used_special_item=false,akarin_pvp:pvp_adv/hueoni/win/people/donot_use_special_item=false}] run advancement grant @s only akarin_pvp:pvp_adv/hueoni/win/people/donot_use_special_item