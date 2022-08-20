#> akarin_pvp:core/hueoni/finish/
# @within function akarin_pvp:core/hueoni/finish/check

# ワールド全般
    gamerule announceAdvancements true
    difficulty peaceful
    kill @e[type=armor_stand,tag=sensor]
    kill @e[type=item]
    kill @e[type=area_effect_cloud]

# チーム
    team empty Pink
    team empty Green

# bossbar
    bossbar set akarin_pvp:timer players

# スコア
    execute as @a if score @s pvp.Playing matches 2 run function akarin_pvp:core/hueoni/finish/players
    scoreboard players set * pvp.Playing -2
    scoreboard players reset $Global pvp.Playing
    scoreboard players reset $if.Finish pvp.temp