#> akarin_pvp:core/hueoni/main/
# @within function akarin_pvp:tick

# タイマー
    scoreboard players add $timer pvp.timerT 1
    execute unless score $ice pvp.timer matches 0.. if score $timer pvp.timerT matches 20.. run scoreboard players remove $timer pvp.timer 1
    execute if score $ice pvp.timer matches 0.. if score $timer pvp.timerT matches 20.. run scoreboard players remove $ice pvp.timer 1
    execute if score $ice pvp.timer matches 0 run bossbar set akarin_pvp:timer color white
    execute if score $ice pvp.timer matches 0 as @a at @s run playsound minecraft:block.glass.break player @s ~ ~ ~ 1 0.6 1
    execute if score $ice pvp.timer matches 0 run scoreboard players reset $ice pvp.timer
    execute if score $timer pvp.timerT matches 20.. run scoreboard players set $timer pvp.timerT 0
    execute store result bossbar akarin_pvp:timer value run scoreboard players get $timer pvp.timer
    bossbar set akarin_pvp:timer name [{"text": "残り時間: ","color": "red"},{"score":{"name": "$timer","objective": "pvp.timer"}},"s"]
    execute if score $timer pvp.timerT matches 0 run function akarin_pvp:core/hueoni/main/chest/check

# Player
    execute as @a if score @s pvp.Playing matches 2 run function akarin_pvp:core/hueoni/main/player

    function akarin_pvp:core/hueoni/finish/check