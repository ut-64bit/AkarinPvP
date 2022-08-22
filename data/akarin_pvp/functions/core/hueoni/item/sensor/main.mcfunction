#> akarin_pvp:core/hueoni/item/sensor/main
# @within function akarin_pvp:core/hueoni/main/

#> Temp
# @within function akarin_pvp:core/hueoni/item/sensor/**
    #declare tag this

tag @s add this

execute as @a[predicate=!lib:effect/invisibility,distance=..6,sort=nearest,limit=1] run tp @e[tag=this] ^ ^ ^ facing entity @s eyes
execute as @a if entity @s[distance=..5] run function akarin_pvp:core/hueoni/item/sensor/effect
execute if score @s PvP.Break matches 5.. run function akarin_pvp:core/hueoni/item/sensor/break

tag @s remove this