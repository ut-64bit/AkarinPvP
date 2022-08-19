#> akarin_pvp:core/hueoni/team/green/join
# @within function akarin_pvp:tick

        tag @s remove People
        tag @s remove Esper
        tag @s remove Hider
        tag @s remove Panya
team join Green @s
scoreboard players enable @s pvp.job_select
scoreboard players set @s pvp.job_select 1