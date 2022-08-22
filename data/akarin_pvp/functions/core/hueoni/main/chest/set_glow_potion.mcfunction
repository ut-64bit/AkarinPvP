#> akarin_pvp:core/hueoni/main/chest/set_glow_potion
# @within function akarin_pvp:core/hueoni/main/chest/

item replace block ~ ~ ~ container.13 with minecraft:splash_potion{Potion: "mundane", CustomPotionColor: 16777215, display: {Name: '"究極発光ポーション"', Lore: ['"鬼が光って足が遅くなる"']}, HideFlags: 34, CustomPotionEffects: [{Id: 2b, Amplifier: -1b, Duration: 100}, {Id: 8b, Amplifier: -127b, Duration: 100}, {Id: 15b, Amplifier: 0b, Duration: 40}, {Id: 16b, Amplifier: 0b, Duration: 40}, {Id: 18b, Amplifier: -1b, Duration: 100}, {Id: 24b, Amplifier: 0b, Duration: 400}]}
tag @s remove SetItem