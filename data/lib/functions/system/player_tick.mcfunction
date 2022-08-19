#> lib:system/player_tick
# @within advancement lib:player_tick

# スコアボード
    ## short_sneak
        execute unless predicate lib:flag/sneaking if score @s lib.sneak_time <= $lib.short_sneak lib.setting run function #minecraft:short_sneak

    ## リセット
        execute unless predicate lib:flag/sneaking if score @s lib.sneak_time matches 1.. run scoreboard players set @s lib.sneak_time 0
        execute unless predicate lib:flag/sprinting if score @s lib.sprint_distance matches 1.. run scoreboard players set @s lib.sprint_distance 0

# function実行
    function #minecraft:player_tick

# 進捗剥奪
    advancement revoke @s only lib:player_tick