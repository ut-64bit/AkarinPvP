#> akarin_pvp:core/hueoni/start/
# @private

# Playing
    scoreboard players set @a[team=Pink] PvP.Playing 2
    scoreboard players set @a[team=Green] PvP.Playing 2
    scoreboard players set $Global PvP.Playing 2
    gamerule showDeathMessages false
    execute as @a if score @s PvP.Playing matches 2 at @s run function akarin_pvp:core/hueoni/start/players
    gamerule showDeathMessages true
    bossbar set akarin_pvp:timer players @a

# タイマー
    scoreboard players operation $timer PvP.Timer = $HueOni.Finish PvP.Setting
    execute store result bossbar akarin_pvp:timer max run scoreboard players get $HueOni.Finish PvP.Setting
    execute store result bossbar akarin_pvp:timer value run scoreboard players get $HueOni.Finish PvP.Setting
    scoreboard players set $timer PvP.TickTimer 0

# ワールド全般
    difficulty hard
    gamerule announceAdvancements false
    execute at @e[tag=SetChest] run item replace block ~ ~ ~ container.13 with air
    scoreboard players reset * PvP.KillRanking
    
    execute unless entity @a[team=Pink,scores={PvP.Playing=2}] run function akarin_pvp:core/hueoni/finish/
    execute if entity @a[team=Pink,scores={PvP.Playing=2}] unless entity @a[team=Green,scores={PvP.Playing=2}] run function akarin_pvp:core/hueoni/finish/
    function akarin_pvp:core/hueoni/main/chest/