#> lib:core/player/pos_check
#
# PosCheck
#
# @within function lib:core/player/pre_tick
 #alias entity Pos @e[type=marker,tag=Temp.PosCheck,sort=nearest,limit=1]

tag @a remove Move
execute as @a at @s unless entity @e[type=marker,tag=Temp.PosCheck,distance=..0.01,sort=nearest,limit=1] run tag @s add Move
kill @e[type=marker,tag=Temp.PosCheck]
execute as @a at @s run summon marker ~ ~ ~ {Tags:["Temp.PosCheck"]}