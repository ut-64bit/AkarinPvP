#> akarin_pvp:core/hueoni/main/chest/check
# @within function akarin_pvp:core/hueoni/main/

scoreboard players operation $temp PvP.Timer = $timer PvP.Timer
scoreboard players operation $temp PvP.Timer %= $SetItem PvP.Temp
execute if score $temp PvP.Timer matches 0 run function akarin_pvp:core/hueoni/main/chest/