#> akarin_pvp:core/gun_pvp/team/leave
# @private

team leave @s
spawnpoint @s 0 1 0
clear @s
scoreboard players reset @s PvP.Playing
scoreboard players reset @s PvP.KillRanking
tp @s 0 2 0