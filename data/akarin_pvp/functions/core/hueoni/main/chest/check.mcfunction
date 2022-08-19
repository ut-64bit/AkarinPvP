#> akarin_pvp:core/hueoni/main/chest/check

scoreboard players operation $temp pvp.timer = $timer pvp.timer
scoreboard players operation $temp pvp.timer %= $set_item pvp.temp
execute if score $temp pvp.timer matches 0 run function akarin_pvp:core/hueoni/main/chest/