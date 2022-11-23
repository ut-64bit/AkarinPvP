#> akarin_pvp:core/hueoni/finish/
# @within function
#   akarin_pvp:core/hueoni/finish/check
#   akarin_pvp:core/hueoni/start/

# ワールド全般
    gamerule announceAdvancements true
    difficulty peaceful

#> EntityKill
    function #asset:hueoni/finish/entity_kill

# チーム
    team empty Pink
    team empty Green

# bossbar
    bossbar set akarin_pvp:timer players

# スコア
    execute as @a if score @s PvP.Playing matches 2 run function akarin_pvp:core/hueoni/finish/players
    scoreboard players set * PvP.Playing -1
    execute as @a run scoreboard players reset @s PvP.Playing
    scoreboard players reset $Global PvP.Playing
    scoreboard players reset $if.Finish PvP.Temp

    scoreboard players add @s GamePlayCount 1