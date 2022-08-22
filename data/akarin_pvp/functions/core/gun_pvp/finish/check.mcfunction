#> akarin_pvp:core/gun_pvp/finish/check
# @within function akarin_pvp:core/gun_pvp/main

    scoreboard players set $if.Finish PvP.Temp 0

# Redチームがいない
    execute if score $if.Finish PvP.Temp matches 0 unless entity @a[team=Red,scores={PvP.Playing=1}] run function akarin_pvp:core/gun_pvp/team/blue/win

# Blueチームがいない
    execute if score $if.Finish PvP.Temp matches 0 unless entity @a[team=Blue,scores={PvP.Playing=1}] run function akarin_pvp:core/gun_pvp/team/red/win

# Redチームの勝利
    execute if score $if.Finish PvP.Temp matches 0 if score $RedKills PvP.Temp >= $GunPvP.Finish PvP.Temp run function akarin_pvp:core/gun_pvp/team/red/win

# Blueチームの勝利
    execute if score $if.Finish PvP.Temp matches 0 if score $BlueKills PvP.Temp >= $GunPvP.Finish PvP.Temp run function akarin_pvp:core/gun_pvp/team/blue/win

# 終了
    execute if score $if.Finish PvP.Temp matches 1 run function akarin_pvp:core/gun_pvp/finish/