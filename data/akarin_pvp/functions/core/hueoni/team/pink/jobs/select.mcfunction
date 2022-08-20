#> akarin_pvp:core/hueoni/team/pink/jobs/select
# @within function akarin_pvp:core/hueoni/team/**

tellraw @s {"text":"-- JOBを選んでね --","color":"green"}
execute if score @s pvp.job matches 1 run tellraw @s {"text":"[TA☆DA☆NO一般人]","underlined": true,"color":"green"}
execute unless score @s pvp.job matches 1 run tellraw @s {"text":"[TA☆DA☆NO一般人]","clickEvent": {"action": "run_command","value": "/trigger pvp.job_select set 1"},"color":"green"}

execute if score @s pvp.job matches 2 run tellraw @s {"text":"[エスパー]","underlined":true,"color":"green"}
execute unless score @s pvp.job matches 2 run tellraw @s {"text":"[エスパー]","clickEvent": {"action": "run_command","value": "/trigger pvp.job_select set 2"},"color":"green"}

execute if score @s pvp.job matches 3 run tellraw @s {"text":"[ハイダー]","underlined":true,"color":"green"}
execute unless score @s pvp.job matches 3 run tellraw @s {"text":"[ハイダー]","clickEvent": {"action": "run_command","value": "/trigger pvp.job_select set 3"},"color":"green"}

execute if score @s pvp.job matches 4 run tellraw @s {"text":"[パン屋]","underlined": true,"color":"green"}
execute unless score @s pvp.job matches 4 run tellraw @s {"text":"[パン屋]","clickEvent": {"action": "run_command","value": "/trigger pvp.job_select set 4"},"color":"green"}

execute if score @s pvp.job matches 5 run tellraw @s {"text":"[オンローカー]","underlined": true,"color":"green"}
execute unless score @s pvp.job matches 5 run tellraw @s {"text":"[オンローカー]","clickEvent": {"action": "run_command","value": "/trigger pvp.job_select set 5"},"color":"green"}

execute if score @s pvp.job matches 6 run tellraw @s {"text":"[マグロ]","underlined": true,"color":"green"}
execute unless score @s pvp.job matches 6 run tellraw @s {"text":"[マグロ]","clickEvent": {"action": "run_command","value": "/trigger pvp.job_select set 6"},"color":"green"}