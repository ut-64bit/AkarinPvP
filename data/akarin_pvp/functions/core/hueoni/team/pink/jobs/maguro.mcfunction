#> akarin_pvp:core/hueoni/team/pink/jobs/maguro
# @within function akarin_pvp:core/hueoni/team/pink/jobs/*

scoreboard players set @s PvP.Job 6
scoreboard players set @s PvP.JobSelect 0
scoreboard players enable @s PvP.JobSelect

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5 1
tellraw @s "GM > あなたのJOBは\"マグロ\"です"
scoreboard players operation @s PvP.MaxStamina = $max_stamina.Maguro PvP.Setting

function akarin_pvp:core/hueoni/team/pink/jobs/select