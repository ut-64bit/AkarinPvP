#> akarin_pvp:core/hueoni/main/chest/set_glow_potion

item replace block ~ ~ ~ container.13 with minecraft:splash_potion{Potion: "mundane", CustomPotionColor: 16777215, display: {Name: '"究極発光ポーション"', Lore: ['"鬼が光って足が遅くなる"']}, HideFlags: 34, CustomPotionEffects: [{Id: 2, Amplifier: -1, Duration: 100}, {Id: 8, Amplifier: -127, Duration: 100}, {Id: 15, Amplifier: 0, Duration: 40}, {Id: 16, Amplifier: 0, Duration: 40}, {Id: 18, Amplifier: -1, Duration: 100}, {Id: 24, Amplifier: 0, Duration: 400}]}
tag @s remove set_item