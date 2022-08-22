#> lib:core/player/tick
# @within advancement lib:player_tick

# short_sneak
    execute if entity @s[tag=Temp.ShortSneak] run tag @s remove Temp.ShortSneak
    execute unless predicate lib:flag/sneaking if score @s SneakTime matches 1.. if score @s SneakTime <= $lib.short_sneak Library.Setting run tag @s add Temp.ShortSneak
    execute if entity @s[tag=Temp.ShortSneak] run function #minecraft:short_sneak

# リセット
    execute unless predicate lib:flag/sneaking if score @s SneakTime matches 1.. run scoreboard players set @s SneakTime 0
    execute unless predicate lib:flag/sprinting if score @s SprintDistance matches 1.. run scoreboard players set @s SprintDistance 0

# Posチェック
    execute as @e[type=marker,tag=Temp.PosCheck,sort=nearest,limit=1] run kill @s
    summon marker ~ ~ ~ {Tags:["Temp.PosCheck"]}

# function実行
    function #minecraft:player_tick

# 進捗剥奪
    advancement revoke @s only lib:player_tick