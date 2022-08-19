#> akarin_pvp:core/hueoni/stamina/remove
# @within tag/function akarin_pvp:stamina

execute if predicate lib:flag/sprinting run scoreboard players add @s pvp.stamina_s 2
execute if predicate lib:flag/sprinting if predicate lib:flag/sneaking run scoreboard players add @s pvp.stamina_s 2
execute if score @s pvp.stamina_s matches 20.. run scoreboard players remove @s pvp.stamina 1
execute if score @s pvp.stamina_s matches 20.. run scoreboard players set @s pvp.stamina_s 0