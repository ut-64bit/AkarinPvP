#> akarin_pvp:core/hueoni/finish/check
# @within function akarin_pvp:core/hueoni/main/

    scoreboard players set $if.Finish PvP.Temp 0

# Pinkチームがいない
    execute if score $if.Finish PvP.Temp matches 0 unless entity @a[team=Pink,scores={PvP.Playing=2}] run function akarin_pvp:core/hueoni/team/green/win

# 逃走者の勝利
    execute if score $if.Finish PvP.Temp matches 0 if score $timer PvP.Timer matches ..0 run function akarin_pvp:core/hueoni/team/pink/win

# 終了
    execute if score $if.Finish PvP.Temp matches 1 run function akarin_pvp:core/hueoni/finish/