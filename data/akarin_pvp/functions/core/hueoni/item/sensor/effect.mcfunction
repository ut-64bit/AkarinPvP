#> akarin_pvp:core/hueoni/item/sensor/effect
# @within function akarin_pvp:core/hueoni/item/sensor/main

execute unless predicate lib:effect/invisibility run effect give @s minecraft:glowing 1 0 false
execute if entity @s[tag=lib.short_sneak] if predicate lib:random_chance/20 run scoreboard players add @e[tag=THIS] pvp.break 1