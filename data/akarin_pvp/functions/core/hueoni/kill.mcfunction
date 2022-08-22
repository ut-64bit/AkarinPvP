#> akarin_pvp:core/hueoni/kill
# @within advancement akarin_pvp:hueoni/kill

execute unless entity @s[tag=Normal] run effect give @s slowness 1 255
execute unless entity @s[tag=Normal] run effect give @s weakness 1 255
execute if entity @s[tag=Normal] run effect give @s speed 3 1

advancement revoke @s only akarin_pvp:hueoni/kill