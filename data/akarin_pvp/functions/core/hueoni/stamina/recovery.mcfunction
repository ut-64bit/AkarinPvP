#> akarin_pvp:core/hueoni/stamina/recovery
# @within tag/function akarin_pvp:stamina

execute if score @s PvP.MaxStamina > @s PvP.Stamina unless predicate lib:flag/sprinting if score $stamina PvP.Stamina matches ..20 run scoreboard players add @s PvP.Stamina.CoolTime 1
execute if score @s PvP.MaxStamina > @s PvP.Stamina unless predicate lib:flag/sprinting if score $stamina PvP.Stamina matches 21.. run scoreboard players add @s PvP.Stamina.CoolTime 1
execute if score @s PvP.MaxStamina > @s PvP.Stamina unless predicate lib:flag/sprinting if score $stamina PvP.Stamina matches 51.. run scoreboard players add @s PvP.Stamina.CoolTime 1
execute if score @s PvP.MaxStamina > @s PvP.Stamina unless predicate lib:flag/sprinting if predicate lib:flag/sneaking run scoreboard players add @s PvP.Stamina.CoolTime 1
execute if score @s PvP.Stamina.CoolTime >= $stamina.cool_time PvP.Setting if score @s PvP.MaxStamina > @s PvP.Stamina run scoreboard players add @s PvP.Stamina 1
execute if score @s PvP.Stamina.CoolTime >= $stamina.cool_time PvP.Setting run scoreboard players set @s PvP.Stamina.CoolTime 0
execute if score @s PvP.Stamina.CoolTime matches 1.. if score @s PvP.MaxStamina = @s PvP.Stamina run scoreboard players set @s PvP.Stamina.CoolTime 0