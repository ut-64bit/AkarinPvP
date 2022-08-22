#> akarin_pvp:core/gun_pvp/start/
# @private

# Playing
    scoreboard players set @a[team=Red] PvP.Playing 1
    scoreboard players set @a[team=Blue] PvP.Playing 1
    scoreboard players set $Global PvP.Playing 1

# スコア初期化
    scoreboard players reset $RedKills PvP.Temp
    scoreboard players reset $BlueKills PvP.Temp
    scoreboard players reset * PvP.KillRanking

# ボスバー設定
    execute store result bossbar akarin_pvp:red max run scoreboard players get $GunPvP.Finish PvP.Temp
    execute store result bossbar akarin_pvp:blue max run scoreboard players get $GunPvP.Finish PvP.Temp
    bossbar set akarin_pvp:red value 0
    bossbar set akarin_pvp:blue value 0
    bossbar set akarin_pvp:red name ["Red: ",{"score":{"name":"$RedKills","objective":"PvP.Temp"},"color":"red"},{"text":" / "},{"score":{"name":"$GunPvP.Finish","objective":"PvP.Temp"}}]
    bossbar set akarin_pvp:blue name ["Blue: ",{"score":{"name":"$BlueKills","objective":"PvP.Temp"},"color":"blue"},{"text":" / "},{"score":{"name":"$GunPvP.Finish","objective":"PvP.Temp"}}]

    execute as @a if score @s PvP.Playing matches 1 run function akarin_pvp:core/gun_pvp/start/players