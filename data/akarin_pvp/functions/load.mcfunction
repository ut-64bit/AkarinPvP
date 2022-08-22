#> akarin_pvp:load
# @within tag/function minecrat:load

# スコア作成
## GunPvP

#> 
# Player
# ____
# プレイヤーのKill数判定用
# @internal
scoreboard objectives add PvP.Death deathCount

#> 
# Player
# ____
# キルランキング
# @internal
scoreboard objectives add PvP.KillRanking killed:player {"text":"キルランキング","color": "gold"}

## 増え鬼

#> 
# Player
# ____
# プレイヤーのスタミナ
# @internal
scoreboard objectives add PvP.Stamina dummy

#> 
# Player
# ____
# プレイヤーのスタミナの最大値
# @internal
scoreboard objectives add PvP.MaxStamina dummy

#> 
# Temp
# ____
# スタミナの消費カウント
# @internal
scoreboard objectives add PvP.Temp.Stamina dummy

#> 
# Temp
# ____
# スタミナの回復カウント
# @internal
scoreboard objectives add PvP.Stamina.CoolTime dummy

#> 
# Trigger
# ____
# Job選択
# @internal
scoreboard objectives add PvP.JobSelect trigger

#> 
# Player
# ____
# Job
# @internal
scoreboard objectives add PvP.Job dummy

#> 
# World
# ____
# タイマー
# @internal
scoreboard objectives add PvP.Timer dummy

#> 
# World
# ____
# tickタイマー
# @internal
scoreboard objectives add PvP.TickTimer dummy

#> 
# Player
# ____
# スプラッシュポーションの使用判定
# @internal
scoreboard objectives add PvP.Used.SplashPotion used:splash_potion

#> 
# Player
# ____
# 残留ポーションの使用判定
# @internal
scoreboard objectives add PvP.Used.LingeringPotion used:lingering_potion

#> 
# Player
# ____
# 透明化ボールの使用判定
# @internal
scoreboard objectives add PvP.Used.InvisibilityBall dropped:slime_ball

#> 
# Player
# ____
# 光る粉の使用判定
# @internal
scoreboard objectives add PvP.Used.GlowPowder dropped:glowstone_dust

#> 
# Player
# ____
# 赤い粉の使用判定
# @internal
scoreboard objectives add PvP.Used.RedPowder dropped:redstone

#> 
# Player
# ____
# トーテム使用回数
# @internal
scoreboard objectives add PvP.Used.Totem dummy

#> 
# Temp
# ____
# Temp
# @internal
scoreboard objectives add PvP.Temp dummy

#> 
# Player
# ____
# マグロ,カメラの破壊ゲージ
# @internal
scoreboard objectives add PvP.Break dummy

#> 
# Setting
# ____
# 設定
# @internal
scoreboard objectives add PvP.Setting dummy

#> 
# Player
# ____
# Play中のゲーム
# @internal
scoreboard objectives add PvP.Playing dummy

#> 
# Player
# ____
# 追加体力
# @internal
scoreboard objectives add PvP.HealthPlus dummy

# ボスバー作成

#> 
# Bossbar
# @internal
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

# スコア設定
    scoreboard players set $100 PvP.Temp 100
    execute unless score $GunPvP.Finish PvP.Temp matches -2147483648..2147483647 run scoreboard players set $GunPvP.Finish PvP.Temp 20