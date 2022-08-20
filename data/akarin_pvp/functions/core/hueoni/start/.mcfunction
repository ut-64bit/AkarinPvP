#> akarin_pvp:core/hueoni/start/
# @private

# Playing
    scoreboard players set @a[team=Pink] pvp.Playing 2
    scoreboard players set @a[team=Green] pvp.Playing 2
    scoreboard players set $Global pvp.Playing 2
    gamerule showDeathMessages false
    execute as @a if score @s pvp.Playing matches 2 at @s run function akarin_pvp:core/hueoni/start/players
    gamerule showDeathMessages true
    bossbar set akarin_pvp:timer players @a

# タイマー
    scoreboard players operation $timer pvp.timer = $HueOni.Finish pvp.setting
    execute store result bossbar akarin_pvp:timer max run scoreboard players get $HueOni.Finish pvp.setting
    execute store result bossbar akarin_pvp:timer value run scoreboard players get $HueOni.Finish pvp.setting
    scoreboard players set $timer pvp.timerT 0

# ワールド全般
    difficulty hard
    gamerule announceAdvancements false
    execute at @e[tag=set_chest] run item replace block ~ ~ ~ container.13 with air
    scoreboard players reset * pvp.killranking
    
    execute unless entity @a[scores={pvp.Playing=2},team=Pink] run function akarin_pvp:core/hueoni/finish/
    execute if entity @a[scores={pvp.Playing=2},team=Pink] unless entity @a[scores={pvp.Playing=2},team=Green] run function akarin_pvp:core/hueoni/finish/
    function akarin_pvp:core/hueoni/main/chest/