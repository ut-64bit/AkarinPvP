#> lib:core/player/short_sneak
# @within function lib:core/player/pre_tick

    tag @a remove Temp.ShortSneak
    execute as @a unless predicate lib:flag/sneaking if score @s SneakTime matches 1.. if score @s SneakTime <= $lib.short_sneak Library.Setting run tag @s add Temp.ShortSneak