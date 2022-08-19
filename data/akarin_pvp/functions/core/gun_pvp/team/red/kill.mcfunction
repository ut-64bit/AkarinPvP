#> akarin_pvp:core/gun_pvp/team/red/kill

scoreboard players set @s pvp.death 0
scoreboard players add $RedKills pvp.temp 1
bossbar set akarin_pvp:red name ["Red: ",{"score":{"name":"$RedKills","objective":"pvp.temp"},"color":"red"},{"text":" / "},{"score":{"name":"$GunPvP.Finish","objective":"pvp.temp"}}]