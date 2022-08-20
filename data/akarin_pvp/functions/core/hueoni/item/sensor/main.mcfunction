#> akarin_pvp:core/hueoni/item/sensor/main
# @within function akarin_pvp:core/hueoni/main/

#> temp
# @private
    #declare tag THIS

tag @s add THIS

execute as @a[distance=..6,predicate=!lib:effect/invisibility,sort=nearest,limit=1] run tp @e[tag=THIS] ^ ^ ^ facing entity @s eyes
execute as @a if entity @s[distance=..5] run function akarin_pvp:core/hueoni/item/sensor/effect
execute if score @s pvp.break matches 5.. run function akarin_pvp:core/hueoni/item/sensor/break

tag @s remove THIS