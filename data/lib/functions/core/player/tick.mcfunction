#> lib:core/player/tick
# @within advancement lib:player_tick

# short_sneak
    execute if entity @s[tag=lib.short_sneak] run tag @s remove lib.short_sneak
    execute unless predicate lib:flag/sneaking if score @s lib.sneak_time matches 1.. if score @s lib.sneak_time <= $lib.short_sneak lib.setting run tag @s add lib.short_sneak
    execute if entity @s[tag=lib.short_sneak] run function #minecraft:short_sneak

# リセット
    execute unless predicate lib:flag/sneaking if score @s lib.sneak_time matches 1.. run scoreboard players set @s lib.sneak_time 0
    execute unless predicate lib:flag/sprinting if score @s lib.sprint_distance matches 1.. run scoreboard players set @s lib.sprint_distance 0

# Posチェック
    execute as @e[type=marker,tag=lib.pos_check] run kill @s
    summon marker ~ ~ ~ {Tags:["lib.pos_check"]}

# function実行
    function #minecraft:player_tick

# 進捗剥奪
    advancement revoke @s only lib:player_tick