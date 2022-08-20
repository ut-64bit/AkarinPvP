#> akarin_pvp:core/hueoni/team/pink/jobs/panya
# @within function akarin_pvp:core/hueoni/team/pink/jobs/*

scoreboard players set @s pvp.job 4
scoreboard players set @s pvp.job_select 0
scoreboard players enable @s pvp.job_select

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5 1
tellraw @s "GM > あなたのJOBは\"パン屋\"です"
scoreboard players operation @s pvp.max_stamina = $max_stamina.Panya pvp.setting

function akarin_pvp:core/hueoni/team/pink/jobs/select