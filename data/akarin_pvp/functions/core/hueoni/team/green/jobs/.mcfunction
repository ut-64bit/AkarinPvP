#> akarin_pvp:core/hueoni/team/green/jobs/
# @within function akarin_pvp:tick

execute if score @s pvp.job_select matches 1 run function akarin_pvp:core/hueoni/team/green/jobs/normal
execute if score @s pvp.job_select matches 2 run function akarin_pvp:core/hueoni/team/green/jobs/stalker
execute if score @s pvp.job_select matches 3 run function akarin_pvp:core/hueoni/team/green/jobs/assassin