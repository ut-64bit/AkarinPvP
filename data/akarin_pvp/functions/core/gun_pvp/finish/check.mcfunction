#> akarin_pvp:core/gun_pvp/finish/check
# @within function akarin_pvp:core/gun_pvp/main

    scoreboard players set $if.Finish pvp.temp 0

# Redチームがいない
    execute if score $if.Finish pvp.temp matches 0 unless entity @a[scores={pvp.Playing=1},team=Red] run function akarin_pvp:core/gun_pvp/team/blue/win

# Blueチームがいない
    execute if score $if.Finish pvp.temp matches 0 unless entity @a[scores={pvp.Playing=1},team=Blue] run function akarin_pvp:core/gun_pvp/team/red/win

# Redチームの勝利
    execute if score $if.Finish pvp.temp matches 0 if score $RedKills pvp.temp >= $GunPvP.Finish pvp.temp run function akarin_pvp:core/gun_pvp/team/red/win

# Blueチームの勝利
    execute if score $if.Finish pvp.temp matches 0 if score $BlueKills pvp.temp >= $GunPvP.Finish pvp.temp run function akarin_pvp:core/gun_pvp/team/blue/win

# 終了
    execute if score $if.Finish pvp.temp matches 1 run function akarin_pvp:core/gun_pvp/finish/