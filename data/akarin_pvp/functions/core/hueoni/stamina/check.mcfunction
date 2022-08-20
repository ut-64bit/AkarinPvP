#> akarin_pvp:core/hueoni/stamina/check
# @within tag/function akarin_pvp:stamina

#> temp
# @within function akarin_pvp:core/stamina/*
    #declare score_holder $stamina

scoreboard players operation $stamina pvp.stamina = @s pvp.stamina
scoreboard players operation $stamina pvp.stamina *= $100 pvp.temp
scoreboard players operation $stamina pvp.stamina /= @s pvp.max_stamina
execute if score @s pvp.max_stamina matches 0 run scoreboard players set $stamina pvp.stamina 100