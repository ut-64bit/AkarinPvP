#> akarin_pvp:core/hueoni/item/sensor/break
# @within function akarin_pvp:core/hueoni/item/sensor/main

playsound block.glass.break block @a ~ ~ ~ 1 1
playsound block.note_block.bell block @a ~ ~ ~ 1 2
particle flash ~ ~ ~ 0 0 0 0 1 normal
kill @s