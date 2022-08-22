#> akarin_pvp:core/hueoni/main/maguro
# @within function akarin_pvp:core/hueoni/main/player

gamerule showDeathMessages false

particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
playsound entity.generic.explode player @a ~ ~ ~ 1.5 0.7 0.5
tellraw @a [{"selector":"@s"},{"text":"は盛大に爆発した!","color": "white"}]
scoreboard players reset @s PvP.Break
kill @s

gamerule showDeathMessages true
