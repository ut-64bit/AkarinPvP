#> akarin_pvp:core/hueoni/team/pink/jobs/hider
# @within function akarin_pvp:core/hueoni/team/pink/jobs/*

scoreboard players set @s pvp.job 3
scoreboard players set @s pvp.job_select 0
scoreboard players enable @s pvp.job_select

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5 1
tellraw @s "GM > あなたのJOBは\"ハイダー\"です"
scoreboard players set @s pvp.max_stamina 30

function akarin_pvp:core/hueoni/team/pink/jobs/select