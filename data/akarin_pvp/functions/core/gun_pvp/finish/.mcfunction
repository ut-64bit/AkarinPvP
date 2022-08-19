#> akarin_pvp:core/gun_pvp/finish/
# @within function akarin_pvp:core/gun_pvp/finish/check

# スコア
    ## 初期化
        scoreboard players reset $RedKills pvp.temp
        scoreboard players reset $BlueKills pvp.temp

    ## ランキング表示
        scoreboard objectives setdisplay sidebar pvp.killranking

# チーム解散
    team empty Red
    team empty Blue

# ボスバー
    bossbar set akarin_pvp:red players
    bossbar set akarin_pvp:blue players

# 終了処理
    execute if score @s pvp.Playing matches 1 run function akarin_pvp:core/gun_pvp/finish/players
    scoreboard players reset * pvp.Playing
    scoreboard players reset $if.Finish pvp.temp