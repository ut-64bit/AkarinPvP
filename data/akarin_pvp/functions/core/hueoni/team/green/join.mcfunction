#> akarin_pvp:core/hueoni/team/green/join
# @within function akarin_pvp:tick

team join Green @s
scoreboard players set @s pvp.job_select 1
scoreboard players enable @s pvp.job_select
        tag @s remove People
        tag @s remove Esper
        tag @s remove Hider
        tag @s remove Panya
        tag @s remove Onlooker
        tag @s remove Maguro