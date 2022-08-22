#> akarin_pvp:core/hueoni/team/green/jobs/select
# @within function akarin_pvp:core/hueoni/team/**

tellraw @s {"text":"-- JOBを選んでね --","color":"green"}
execute if score @s PvP.Job matches 1 run tellraw @s {"text":"[TA☆DA☆NO鬼]","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger PvP.JobSelect set 1"},"color":"green"}
execute unless score @s PvP.Job matches 1 run tellraw @s {"text":"[TA☆DA☆NO鬼]","clickEvent": {"action": "run_command","value": "/trigger PvP.JobSelect set 1"},"color":"green"}

execute if score @s PvP.Job matches 2 run tellraw @s {"text":"[ストーカー]","underlined":true,"clickEvent": {"action": "run_command","value": "/trigger PvP.JobSelect set 2"},"color":"green"}
execute unless score @s PvP.Job matches 2 run tellraw @s {"text":"[ストーカー]","clickEvent": {"action": "run_command","value": "/trigger PvP.JobSelect set 2"},"color":"green"}

execute if score @s PvP.Job matches 3 run tellraw @s {"text":"[アサシン]","underlined":true,"clickEvent": {"action": "run_command","value": "/trigger PvP.JobSelect set 3"},"color":"green"}
execute unless score @s PvP.Job matches 3 run tellraw @s {"text":"[アサシン]","clickEvent": {"action": "run_command","value": "/trigger PvP.JobSelect set 3"},"color":"green"}