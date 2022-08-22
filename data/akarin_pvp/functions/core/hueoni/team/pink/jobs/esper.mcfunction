#> akarin_pvp:core/hueoni/team/pink/jobs/esper
# @within function akarin_pvp:core/hueoni/team/pink/jobs/*

scoreboard players set @s PvP.Job 2
scoreboard players set @s PvP.JobSelect 0
scoreboard players enable @s PvP.JobSelect

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5 1
tellraw @s "GM > あなたのJOBは\"エスパー\"です"
scoreboard players operation @s PvP.MaxStamina = $max_stamina.Esper PvP.Setting

function akarin_pvp:core/hueoni/team/pink/jobs/select