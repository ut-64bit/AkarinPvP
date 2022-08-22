#> akarin_pvp:core/hueoni/item/totem
# @within advancement akarin_pvp:hueoni/totem

effect give @s minecraft:speed 6 5 true
effect clear @s fire_resistance
effect clear @s regeneration
effect give @s resistance 5 64 true
effect give @s instant_health 1 8 true
tellraw @s "与えられた猶予発動"

advancement revoke @s only akarin_pvp:hueoni/totem