#> akarin_pvp:core/gun_pvp/team/blue/win

scoreboard players set $if.Finish PvP.Temp 1
execute as @a if score @s PvP.Playing matches 1 run title @s title {"text":"青の勝利","color":"blue"}