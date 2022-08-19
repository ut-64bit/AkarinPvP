#> akarin_pvp:core/gun_pvp/start/
# @private

# Playing
    scoreboard players set @a[team=Red] pvp.Playing 1
    scoreboard players set @a[team=Blue] pvp.Playing 1
    scoreboard players set $Global pvp.Playing 1

# スコア初期化
    scoreboard players reset $RedKills pvp.temp
    scoreboard players reset $BlueKills pvp.temp
    scoreboard players reset * pvp.killranking

# ボスバー設定
    execute store result bossbar akarin_pvp:red max run scoreboard players get $GunPvP.Finish pvp.temp
    execute store result bossbar akarin_pvp:blue max run scoreboard players get $GunPvP.Finish pvp.temp
    bossbar set akarin_pvp:red value 0
    bossbar set akarin_pvp:blue value 0
    bossbar set akarin_pvp:red name ["Red: ",{"score":{"name":"$RedKills","objective":"pvp.temp"},"color":"red"},{"text":" / "},{"score":{"name":"$GunPvP.Finish","objective":"pvp.temp"}}]
    bossbar set akarin_pvp:blue name ["Blue: ",{"score":{"name":"$BlueKills","objective":"pvp.temp"},"color":"blue"},{"text":" / "},{"score":{"name":"$GunPvP.Finish","objective":"pvp.temp"}}]

    execute as @a if score @s pvp.Playing matches 1 run function akarin_pvp:core/gun_pvp/start/players