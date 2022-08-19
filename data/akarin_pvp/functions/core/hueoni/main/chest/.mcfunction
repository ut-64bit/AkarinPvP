#> akarin_pvp:core/hueoni/main/chest/

# アイテム補充
    execute as @e[type=armor_stand,tag=set_chest] run tag @s add set_item
    execute as @e[type=armor_stand,tag=set_item,sort=random,limit=20] at @s run item replace block ~ ~ ~ container.13 with bread 2
    execute as @e[type=armor_stand,tag=set_item,sort=random,limit=5] at @s run function akarin_pvp:core/hueoni/main/chest/set_glow_potion
    execute as @e[type=armor_stand,tag=set_item,sort=random,limit=5] at @s run function akarin_pvp:core/hueoni/main/chest/set_potion
    execute as @e[type=armor_stand,tag=set_item,sort=random,limit=5] at @s run function akarin_pvp:core/hueoni/main/chest/set_skill
    execute as @e[type=armor_stand,tag=set_item,sort=random,limit=5] at @s run function akarin_pvp:core/hueoni/main/chest/set_totam
    execute as @e[type=armor_stand,tag=set_item] run tag @s remove set_item
    execute as @a if score @s pvp.Playing matches 2 run tellraw @s {"text":"アイテムが補充されました!","color":"green"}

# パン屋
    execute as @a[tag=Panya] run give @s minecraft:bread 8
    execute at @a[tag=Panya] as @a[tag=!Panya,distance=..3,sort=random,limit=3] run give @s minecraft:bread 3
    execute as @a[tag=Panya] if predicate lib:random_chance/5 run give @s minecraft:pumpkin_pie 1
    execute if entity @a[tag=Panya] as @a if score @s pvp.Playing matches 2 run tellraw @s {"text":"パン屋がおいしいパンを焼き上げました!","color":"green"}

# エフェクト
    execute as @a[team=Pink] run effect give @s minecraft:hunger 30 2 true
    execute as @a[team=Pink] if score $timer pvp.timer matches ..30 run effect give @s minecraft:glowing 2 0 false