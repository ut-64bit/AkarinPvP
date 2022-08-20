#> akarin_pvp:core/hueoni/team/pink/jobs/esper
# @within function akarin_pvp:core/hueoni/team/pink/jobs/*

scoreboard players set @s pvp.job 2
scoreboard players set @s pvp.job_select 0
scoreboard players enable @s pvp.job_select

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5 1
tellraw @s "GM > あなたのJOBは\"エスパー\"です"
scoreboard players operation @s pvp.max_stamina = $max_stamina.Esper pvp.setting

function akarin_pvp:core/hueoni/team/pink/jobs/select