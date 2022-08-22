#> akarin_pvp:core/gun_pvp/team/red/kill

scoreboard players set @s PvP.Death 0
scoreboard players add $RedKills PvP.Temp 1
bossbar set akarin_pvp:red name ["Red: ",{"score":{"name":"$RedKills","objective":"PvP.Temp"},"color":"red"},{"text":" / "},{"score":{"name":"$GunPvP.Finish","objective":"PvP.Temp"}}]