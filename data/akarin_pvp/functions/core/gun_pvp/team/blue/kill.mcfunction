#> akarin_pvp:core/gun_pvp/team/blue/kill

scoreboard players set @s pvp.death 0
scoreboard players add $BlueKills pvp.temp 1
bossbar set akarin_pvp:blue name ["Blue: ",{"score":{"name":"$BlueKills","objective":"pvp.temp"},"color":"blue"},{"text":" / "},{"score":{"name":"$GunPvP.Finish","objective":"pvp.temp"}}]