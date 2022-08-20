#> akarin_pvp:tick
# @within tag/function minecrat:tick

# GunPvP
    ## チーム分け
        execute as @a[team=!Red] at @s if block ~ ~-1 ~ red_wool run function akarin_pvp:core/gun_pvp/team/red/join
        execute as @a[team=!Blue] at @s if block ~ ~-1 ~ blue_wool run function akarin_pvp:core/gun_pvp/team/blue/join
    
    ## メイン処理
        execute if score $Global pvp.Playing matches 1 run function akarin_pvp:core/gun_pvp/main

# 増え鬼
    ## チーム分け
        execute as @a[team=!Pink] at @s if block ~ ~-1 ~ pink_wool run function akarin_pvp:core/hueoni/team/pink/join
        execute as @a[team=!Green] at @s if block ~ ~-1 ~ green_wool run function akarin_pvp:core/hueoni/team/green/join
        execute as @a[team=Pink] run function akarin_pvp:core/hueoni/team/pink/jobs/
        execute if score $Global pvp.Playing matches 2 as @a[team=Green] run function akarin_pvp:core/hueoni/team/green/jobs/

    execute as @a if score @s pvp.Playing matches -2 run function akarin_pvp:core/hueoni/finish/players
    ## メイン処理
        execute if score $Global pvp.Playing matches 2 run function akarin_pvp:core/hueoni/main/