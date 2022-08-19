#> akarin_pvp:core/gun_pvp/kill
# @within advancement akarin_pvp:gun_pvp/kill

effect give @s instant_health 1 3 true
give @s diamond 1
playsound block.note_block.bell player @s ~ ~ ~ 1 2 1
advancement revoke @s only akarin_pvp:gun_pvp/kill