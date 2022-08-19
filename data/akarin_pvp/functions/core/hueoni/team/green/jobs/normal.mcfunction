#> akarin_pvp:core/hueoni/team/green/jobs/normal
# @within function akarin_pvp:core/hueoni/team/green/jobs/*

scoreboard players set @s pvp.job 1
scoreboard players set @s pvp.job_select 0
execute unless score $Global pvp.Playing matches 2 run scoreboard players enable @s pvp.job_select

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5 1
tellraw @s "GM > あなたのJOBは\"TA☆DA☆NO鬼\"です"

execute unless score $Global pvp.Playing matches 2 run function akarin_pvp:core/hueoni/team/green/jobs/select
execute if score $Global pvp.Playing matches 2 run function akarin_pvp:core/hueoni/start/players