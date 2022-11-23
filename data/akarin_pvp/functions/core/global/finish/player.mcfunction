#> akarin_pvp:core/global/finish/player
# @within function akarin_pvp:tick

# アイテムとエフェクト消す
    clear @s
    effect clear @s

# リス地
    spawnpoint @s 0 1 0
    tp @s 0 1 0

# attributeリセット
    attribute @s generic.movement_speed base set 0.1
    attribute @s generic.attack_damage base set 1.0
    attribute @s generic.attack_speed base set 4.0

# スコアリセット
    scoreboard players reset @s PvP.Playing