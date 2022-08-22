#> akarin_pvp:core/hueoni/team/green/jobs/stalker
# @within function akarin_pvp:core/hueoni/team/green/jobs/*

scoreboard players set @s PvP.Job 2
scoreboard players set @s PvP.JobSelect 0
execute unless score $Global PvP.Playing matches 2 run scoreboard players enable @s PvP.JobSelect

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5 1
tellraw @s "GM > あなたのJOBは\"ストーカー\"です"

execute unless score $Global PvP.Playing matches 2 run function akarin_pvp:core/hueoni/team/green/jobs/select