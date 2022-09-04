#> akarin_pvp:core/hueoni/item/sensor/effect
# @within function akarin_pvp:core/hueoni/item/sensor/main

execute unless predicate lib:effect/invisibility run effect give @s minecraft:glowing 1 0 false
execute unless predicate lib:effect/invisibility run effect give @s minecraft:slowness 1 0 false
execute if entity @s[tag=Temp.ShortSneak] run scoreboard players remove @e[tag=this] PvP.Break 1
execute if entity @s[tag=Temp.ShortSneak] run playsound block.stone.hit block @a ~ ~ ~ 1 1
execute if entity @s[tag=Temp.ShortSneak] run tag @s remove Temp.ShortSneak