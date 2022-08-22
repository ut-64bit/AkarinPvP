#> akarin_pvp:core/hueoni/finish/players
# @within function
#   akarin_pvp:core/hueoni/finish/
#   akarin_pvp:tick

clear @s
effect clear @s
spawnpoint @s -130 -11 22
tp @s -130 -10 22
attribute @s generic.movement_speed base set 0.1
attribute @s generic.attack_damage base set 1.0
attribute @s generic.attack_speed base set 4.0
scoreboard players reset @s PvP.Playing

function akarin_pvp:core/hueoni/team/adv