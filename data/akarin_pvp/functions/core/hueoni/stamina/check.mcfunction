#> akarin_pvp:core/hueoni/stamina/check
# @within tag/function akarin_pvp:stamina

#> temp
# @within function akarin_pvp:core/stamina/*
    #declare score_holder $stamina

scoreboard players operation $stamina PvP.Stamina = @s PvP.Stamina
scoreboard players operation $stamina PvP.Stamina *= $100 PvP.Temp
scoreboard players operation $stamina PvP.Stamina /= @s PvP.MaxStamina
execute if score @s PvP.MaxStamina matches 0 run scoreboard players set $stamina PvP.Stamina 100