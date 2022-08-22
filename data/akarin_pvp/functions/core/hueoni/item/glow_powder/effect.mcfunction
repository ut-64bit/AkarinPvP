#> akarin_pvp:core/hueoni/item/glow_powder/effect
# @within function akarin_pvp:core/hueoni/item/glow_powder/check

execute as @a if score @s PvP.Playing matches 2 run tellraw @s [{"text":"鬼が発光アイテムを使った!","color":"red"}]
execute as @a[team=Pink] if score @s PvP.Playing matches 2 run effect give @s minecraft:glowing 5 0 true