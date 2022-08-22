#> akarin_pvp:core/hueoni/finish/
# @within function
#   akarin_pvp:core/hueoni/finish/check
#   akarin_pvp:core/hueoni/start/

# ワールド全般
    gamerule announceAdvancements true
    difficulty peaceful
    kill @e[type=armor_stand,tag=Sensor]
    kill @e[type=item]
    kill @e[type=area_effect_cloud]

# チーム
    team empty Pink
    team empty Green

# bossbar
    bossbar set akarin_pvp:timer players

# スコア
    execute as @a if score @s PvP.Playing matches 2 run function akarin_pvp:core/hueoni/finish/players
    scoreboard players set * PvP.Playing -2
    scoreboard players reset $Global PvP.Playing
    scoreboard players reset $if.Finish PvP.Temp