#> akarin_pvp:core/hueoni/main/player
# @within function akarin_pvp:core/hueoni/main/

# 鬼のエフェクト
    execute if entity @s[team=Green] run effect give @s minecraft:saturation 4 9 true

# 逃走者
    execute if entity @s[team=Pink] run function #akarin_pvp:stamina
    execute store result score @s pvp.health_plus run data get entity @s AbsorptionAmount 0.2
    execute if score @s pvp.health_plus matches 1.. run particle dust 1 1 0 1 ~1 ~ ~ 0 0 0 0 1 normal @a
    execute if score @s pvp.health_plus matches 2.. run particle dust 1 1 0 1 ~ ~ ~1 0 0 0 0 1 normal @a
    execute if score @s pvp.health_plus matches 3.. run particle dust 1 1 0 1 ~-1 ~ ~ 0 0 0 0 1 normal @a
    execute if score @s pvp.health_plus matches 4.. run particle dust 1 1 0 1 ~ ~ ~-1 0 0 0 0 1 normal @a

# エスパー
    execute if entity @s[tag=Esper] at @s anchored eyes positioned ^ ^ ^ facing entity @a[team=Green,distance=..16] eyes run particle soul_fire_flame ^ ^ ^1 0 0 0 0 1 normal @s
    execute if entity @s[tag=Esper] at @s at @a[team=Green,distance=..16] positioned ~ ~1 ~ run particle dust 0 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force @s

# ストーカー
    execute if entity @s[tag=Stalker] as @a[team=Pink] unless predicate lib:flag/sneaking at @s positioned ~ ~0.2 ~ run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 5 force @a[tag=Stalker]
    execute if entity @s[tag=Stalker] at @s anchored eyes positioned ^ ^ ^ facing entity @a[team=Pink,distance=..30] eyes rotated ~ 0 run particle minecraft:flame ^ ^-0.5 ^1 0 0 0 0 1 normal @s

# アサシン
    execute if entity @s[tag=Assassin] unless data entity @s SelectedItem if predicate lib:flag/sneaking at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:1b,Amplifier:8b,Duration:2,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2,ShowParticles:1b}]}
    execute if entity @s[tag=Assassin] at @s if data entity @s SelectedItem{id:"minecraft:iron_sword"} if entity @a[team=Pink,distance=..2] run effect give @s strength 4 9 true

# ハイダー
    execute if entity @s[tag=Hider] if score @s lib.sneak_time matches 60.. if entity @e[tag=lib.pos_check,distance=..0.05] unless data entity @s SelectedItem at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:2b,Amplifier:10b,Duration:2,ShowParticles:0b},{Id:8b,Amplifier:-128b,Duration:2,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2,ShowParticles:1b},{Id:17,Amplifier:8b,Duration:2,ShowParticles:0b}]}

# マグロ
    execute if entity @s[tag=Maguro] if entity @e[tag=lib.pos_check,distance=..0.1] run scoreboard players add @s pvp.break 1
    execute if entity @s[tag=Maguro] if entity @e[tag=lib.pos_check,distance=..0.1] run playsound block.note_block.bell player @s ~ ~ ~ 1 1.1
    execute if entity @s[tag=Maguro] unless entity @e[tag=lib.pos_check,distance=..0.1] run scoreboard players set @s pvp.break 0
    execute if entity @s[tag=Maguro] if entity @e[tag=lib.pos_check,distance=..0.1] if score @s pvp.break matches 60.. run function akarin_pvp:core/hueoni/main/maguro

# 発光
    execute if score $timer pvp.timer matches ..30 if entity @s[team=Pink] run effect give @s glowing 2 0 false