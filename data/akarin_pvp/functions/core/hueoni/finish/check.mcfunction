#> akarin_pvp:core/hueoni/finish/check
# @within function akarin_pvp:core/hueoni/main/

    scoreboard players set $if.Finish pvp.temp 0

# Pinkチームがいない
    execute if score $if.Finish pvp.temp matches 0 unless entity @a[scores={pvp.Playing=2},team=Pink] run function akarin_pvp:core/hueoni/team/green/win

# 逃走者の勝利
    execute if score $if.Finish pvp.temp matches 0 if score $timer pvp.timer matches ..0 run function akarin_pvp:core/hueoni/team/pink/win

# 終了
    execute if score $if.Finish pvp.temp matches 1 run function akarin_pvp:core/hueoni/finish/