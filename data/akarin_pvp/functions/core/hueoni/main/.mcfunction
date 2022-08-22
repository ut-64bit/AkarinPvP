#> akarin_pvp:core/hueoni/main/
# @within function akarin_pvp:tick

#> Timer
# @private
    #declare score_holder $ice

# タイマー
    scoreboard players add $timer PvP.TickTimer 1
    execute unless score $ice PvP.Timer matches 0.. if score $timer PvP.TickTimer matches 20.. run scoreboard players remove $timer PvP.Timer 1
    execute if score $ice PvP.Timer matches 0.. if score $timer PvP.TickTimer matches 20.. run scoreboard players remove $ice PvP.Timer 1
    execute if score $ice PvP.Timer matches 0 run bossbar set akarin_pvp:timer color white
    execute if score $ice PvP.Timer matches 0 as @a at @s run playsound minecraft:block.glass.break player @s ~ ~ ~ 1 0.6 1
    execute if score $ice PvP.Timer matches 0 run scoreboard players reset $ice PvP.Timer
    execute if score $timer PvP.TickTimer matches 20.. run scoreboard players set $timer PvP.TickTimer 0
    execute store result bossbar akarin_pvp:timer value run scoreboard players get $timer PvP.Timer
    bossbar set akarin_pvp:timer name [{"text": "残り時間: ","color": "red"},{"score":{"name": "$timer","objective": "PvP.Timer"}},"s"]
    execute if score $timer PvP.TickTimer matches 0 run function akarin_pvp:core/hueoni/main/chest/check

# sensor
    execute as @e[type=armor_stand,tag=Sensor] at @s run function akarin_pvp:core/hueoni/item/sensor/main

# Player
    execute as @a if score @s PvP.Playing matches 2 run function akarin_pvp:core/hueoni/main/player

    function akarin_pvp:core/hueoni/finish/check