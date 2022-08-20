#> akarin_pvp:load
# @within tag/function minecrat:load

# スコア作成
## GunPvP

#> Player
# ____
# プレイヤーのKill数判定用
# @internal
scoreboard objectives add pvp.death deathCount

#> Player
# ____
# キルランキング
# @internal
scoreboard objectives add pvp.killranking killed:player {"text":"キルランキング","color": "gold"}

## 増え鬼

#> Player
# ____
# プレイヤーのスタミナ
# @internal
scoreboard objectives add pvp.stamina dummy

#> Player
# ____
# プレイヤーのスタミナの最大値
# @internal
scoreboard objectives add pvp.max_stamina dummy

#> Temp
# ____
# スタミナの消費カウント
# @internal
scoreboard objectives add pvp.stamina_s dummy

#> Temp
# ____
# スタミナの回復カウント
# @internal
scoreboard objectives add pvp.cool dummy

#> Trigger
# ____
# Job選択
# @internal
scoreboard objectives add pvp.job_select trigger

#> Player
# ____
# Job
# @internal
scoreboard objectives add pvp.job dummy

#> World
# ____
# タイマー
# @internal
scoreboard objectives add pvp.timer dummy

#> World
# ____
# tickタイマー
# @internal
scoreboard objectives add pvp.timerT dummy

#> Player
# ____
# スプラッシュポーションの使用判定
# @internal
scoreboard objectives add pvp.used_splash_potion used:splash_potion

#> Player
# ____
# 残留ポーションの使用判定
# @internal
scoreboard objectives add pvp.used_lingering_potion used:lingering_potion

#> Player
# ____
# 透明化ボールの使用判定
# @internal
scoreboard objectives add pvp.used_invisibility_ball dropped:slime_ball

#> Player
# ____
# 光る粉の使用判定
# @internal
scoreboard objectives add pvp.used_glow_powder dropped:glowstone_dust

#> Player
# ____
# 赤い粉の使用判定
# @internal
scoreboard objectives add pvp.used_red_powder dropped:redstone

#> Player
# ____
# トーテム使用回数
# @internal
scoreboard objectives add pvp.used_totem dummy

    scoreboard objectives add pvp.temp dummy
    scoreboard objectives add pvp.setting dummy
    scoreboard objectives add pvp.Playing dummy

# ボスバー作成
    bossbar add akarin_pvp:timer "Timer"
    bossbar add akarin_pvp:red "Red"
    bossbar add akarin_pvp:blue "Blue"

    bossbar set akarin_pvp:timer color white
    bossbar set akarin_pvp:red color red
    bossbar set akarin_pvp:blue color blue

# チーム作成
    team add Red
    team modify Red collisionRule pushOtherTeams
    team modify Red color red
    team modify Red friendlyFire false
    team modify Red nametagVisibility hideForOtherTeams
    team modify Red seeFriendlyInvisibles true

    team add Blue
    team modify Blue collisionRule pushOtherTeams
    team modify Blue color blue
    team modify Blue friendlyFire false
    team modify Blue nametagVisibility hideForOtherTeams
    team modify Blue seeFriendlyInvisibles true

    team add Pink
    team modify Pink collisionRule always
    team modify Pink color light_purple
    team modify Pink friendlyFire false
    team modify Pink nametagVisibility always
    team modify Pink seeFriendlyInvisibles true

    team add Green
    team modify Green collisionRule always
    team modify Green color green
    team modify Green friendlyFire false
    team modify Green nametagVisibility always
    team modify Green seeFriendlyInvisibles true

    scoreboard players set $100 pvp.temp 100
    execute unless score $stamina.cool_time pvp.setting matches -2147483648..2147483647 run scoreboard players set $stamina.cool_time pvp.setting 20
    execute unless score $GunPvP.Finish pvp.temp matches -2147483648..2147483647 run scoreboard players set $GunPvP.Finish pvp.temp 20
    execute unless score $HueOni.Finish pvp.setting matches -2147483648..2147483647 run scoreboard players set $HueOni.Finish pvp.setting 120