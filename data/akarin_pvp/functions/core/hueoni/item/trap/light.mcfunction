#> akarin_pvp:core/hueoni/item/trap/light
# @internal

execute as @a[distance=..3] run effect give @s glowing 30 0
execute as @a[distance=..3] run effect give @s jump_boost 1 128
execute as @a[distance=..3] run effect give @s slowness 1 255
execute as @a[distance=..3] run effect give @s blindness 1 0
particle minecraft:explosion_emitter ~ ~1 ~ 0.2 0.2 0.2 0.1 1 force @a
playsound minecraft:entity.generic.explode player @a ~ ~1 ~ 2 0.8
clear @s glowstone{Type:trap}
advancement revoke @s only akarin_pvp:hueoni/trap/light