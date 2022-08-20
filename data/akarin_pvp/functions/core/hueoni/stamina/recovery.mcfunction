#> akarin_pvp:core/hueoni/stamina/recovery
# @within tag/function akarin_pvp:stamina

execute if score @s pvp.max_stamina > @s pvp.stamina unless predicate lib:flag/sprinting if score $stamina pvp.stamina matches ..20 run scoreboard players add @s pvp.cool 1
execute if score @s pvp.max_stamina > @s pvp.stamina unless predicate lib:flag/sprinting if score $stamina pvp.stamina matches 21.. run scoreboard players add @s pvp.cool 1
execute if score @s pvp.max_stamina > @s pvp.stamina unless predicate lib:flag/sprinting if score $stamina pvp.stamina matches 51.. run scoreboard players add @s pvp.cool 1
execute if score @s pvp.max_stamina > @s pvp.stamina unless predicate lib:flag/sprinting if predicate lib:flag/sneaking run scoreboard players add @s pvp.cool 1
execute if score @s pvp.cool >= $stamina.cool_time pvp.setting if score @s pvp.max_stamina > @s pvp.stamina run scoreboard players add @s pvp.stamina 1
execute if score @s pvp.cool >= $stamina.cool_time pvp.setting run scoreboard players set @s pvp.cool 0
execute if score @s pvp.cool matches 1.. if score @s pvp.max_stamina = @s pvp.stamina run scoreboard players set @s pvp.cool 0