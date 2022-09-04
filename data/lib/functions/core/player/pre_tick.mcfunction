#> lib:core/player/pre_tick
#
# PreTick
#
# @within function lib:system/tick

execute as @a if predicate lib:flag/sneaking run scoreboard players add @s SneakTime 1
function lib:core/player/short_sneak
function lib:core/player/pos_check
execute as @a unless predicate lib:flag/sneaking if score @s SneakTime matches 1.. run scoreboard players set @s SneakTime 0
execute as @a unless predicate lib:flag/sprinting if score @s SprintDistance matches 1.. run scoreboard players set @s SprintDistance 0