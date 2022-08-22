#> akarin_pvp:core/hueoni/stamina/remove
# @within tag/function akarin_pvp:stamina

execute if predicate lib:flag/sprinting run scoreboard players add @s PvP.Temp.Stamina 2
execute if predicate lib:flag/sprinting if predicate lib:flag/sneaking run scoreboard players add @s PvP.Temp.Stamina 2
execute if score @s PvP.Temp.Stamina matches 20.. if score @s PvP.Stamina matches 1.. run scoreboard players remove @s PvP.Stamina 1
execute if score @s PvP.Temp.Stamina matches 20.. run scoreboard players set @s PvP.Temp.Stamina 0