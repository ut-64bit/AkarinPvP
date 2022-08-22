#> akarin_pvp:tick
# @within tag/function minecraft:tick

# GunPvP
    ## チーム分け
        execute as @a[team=!Red] at @s if block ~ ~-1 ~ red_wool run function akarin_pvp:core/gun_pvp/team/red/join
        execute as @a[team=!Blue] at @s if block ~ ~-1 ~ blue_wool run function akarin_pvp:core/gun_pvp/team/blue/join
    
    ## メイン処理
        execute if score $Global PvP.Playing matches 1 run function akarin_pvp:core/gun_pvp/main

# 増え鬼
    ## チーム分け
        execute as @a[team=!Pink] at @s if block ~ ~-1 ~ pink_wool run function akarin_pvp:core/hueoni/team/pink/join
        execute as @a[team=!Green] at @s if block ~ ~-1 ~ green_wool run function akarin_pvp:core/hueoni/team/green/join
        execute as @a[team=Pink] run function akarin_pvp:core/hueoni/team/pink/jobs/
        execute as @a[team=Green] run function akarin_pvp:core/hueoni/team/green/jobs/

    ## 終了
        execute as @a if score @s PvP.Playing matches -2 run function akarin_pvp:core/hueoni/finish/players

    ## メイン処理
        execute if score $Global PvP.Playing matches 2 run function akarin_pvp:core/hueoni/main/

    ## 設定
        execute unless score $stamina.cool_time PvP.Setting matches -2147483648..2147483647 run scoreboard players set $stamina.cool_time PvP.Setting 20
        execute unless score $HueOni.Finish PvP.Setting matches -2147483648..2147483647 run scoreboard players set $HueOni.Finish PvP.Setting 120

        ### スタミナの最大値
            execute unless score $max_stamina.People PvP.Setting matches -2147483648..2147483647 run scoreboard players set $max_stamina.People PvP.Setting 50
            execute unless score $max_stamina.Esper PvP.Setting matches -2147483648..2147483647 run scoreboard players set $max_stamina.Esper PvP.Setting 25
            execute unless score $max_stamina.Hider PvP.Setting matches -2147483648..2147483647 run scoreboard players set $max_stamina.Hider PvP.Setting 30
            execute unless score $max_stamina.Panya PvP.Setting matches -2147483648..2147483647 run scoreboard players set $max_stamina.Panya PvP.Setting 25
            execute unless score $max_stamina.Onlooker PvP.Setting matches -2147483648..2147483647 run scoreboard players set $max_stamina.Onlooker PvP.Setting 20
            execute unless score $max_stamina.Maguro PvP.Setting matches -2147483648..2147483647 run scoreboard players set $max_stamina.Maguro PvP.Setting 0