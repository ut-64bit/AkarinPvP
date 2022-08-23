#> akarin_pvp:core/hueoni/finish/players
# @within function
#   akarin_pvp:core/hueoni/finish/
#   akarin_pvp:tick

# アイテムとエフェクト消す
    clear @s
    effect clear @s

# リス地
    spawnpoint @s -130 -11 22
    tp @s -130 -10 22

# attributeリセット
    attribute @s generic.movement_speed base set 0.1
    attribute @s generic.attack_damage base set 1.0
    attribute @s generic.attack_speed base set 4.0

# スコアリセット
    scoreboard players reset @s PvP.Playing

function #asset:hueoni/finish/adv