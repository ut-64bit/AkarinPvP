#> lib:system/load
# @within tag/function minecraft:load

# スコアボード作成

#> Player: 
# スニーク時間[tick]
# @public
    scoreboard objectives add lib.sneak_time custom:sneak_time

#> Player: 
# 走行距離[cm]
# @public
    scoreboard objectives add lib.sprint_distance custom:sprint_one_cm

#> Player: 
# Health
# @public
    scoreboard objectives add lib.health health

#> Player: 
# Food
# @public
    scoreboard objectives add lib.food food

#> Setting
# @internal
    scoreboard objectives add lib.setting dummy

#> Temp
# @public
    scoreboard objectives add lib.temp dummy

    ## other
        execute unless score $lib.ver lib.temp matches 100 run function lib:system/init