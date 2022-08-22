#> akarin_pvp:core/gun_pvp/finish/
# @within function akarin_pvp:core/gun_pvp/finish/check

# スコア
    ## 初期化
        scoreboard players reset $RedKills PvP.Temp
        scoreboard players reset $BlueKills PvP.Temp

    ## ランキング表示
        scoreboard objectives setdisplay sidebar PvP.KillRanking

# チーム解散
    team empty Red
    team empty Blue

# ボスバー
    bossbar set akarin_pvp:red players
    bossbar set akarin_pvp:blue players

# 終了処理
    execute if score @s PvP.Playing matches 1 run function akarin_pvp:core/gun_pvp/finish/players
    scoreboard players reset * PvP.Playing
    scoreboard players reset $if.Finish PvP.Temp