#> akarin_pvp:core/gun_pvp/team/blue/kill

scoreboard players set @s PvP.Death 0
scoreboard players add $BlueKills PvP.Temp 1
bossbar set akarin_pvp:blue name ["Blue: ",{"score":{"name":"$BlueKills","objective":"PvP.Temp"},"color":"blue"},{"text":" / "},{"score":{"name":"$GunPvP.Finish","objective":"PvP.Temp"}}]