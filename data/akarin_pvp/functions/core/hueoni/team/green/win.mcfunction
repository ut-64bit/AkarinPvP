#> akarin_pvp:core/hueoni/team/green/win

gamerule announceAdvancements true
scoreboard players set $if.Finish pvp.temp 1
execute as @a if score @s pvp.Playing matches 2 run title @s title {"text":"鬼の勝利!"}

# 鬼の勝利
    execute as @a if score @s pvp.Playing matches 2 if entity @s[tag=Normal,advancements={akarin_pvp:pvp_adv/hueoni/win/normal=false}] run advancement grant @s only akarin_pvp:pvp_adv/hueoni/win/normal
    execute as @a if score @s pvp.Playing matches 2 if entity @s[tag=Stalker,advancements={akarin_pvp:pvp_adv/hueoni/win/stalker=false}] run advancement grant @s only akarin_pvp:pvp_adv/hueoni/win/stalker
    execute as @a if score @s pvp.Playing matches 2 if entity @s[tag=Assassin,advancements={akarin_pvp:pvp_adv/hueoni/win/assassin=false}] run advancement grant @s only akarin_pvp:pvp_adv/hueoni/win/assassin