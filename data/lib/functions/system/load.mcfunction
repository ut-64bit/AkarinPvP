#> lib:system/load
# @within tag/function minecraft:load

# スコアボード作成

#> 
# Player
# - スニーク時間[tick]
# @public
scoreboard objectives add SneakTime custom:sneak_time

#> 
# Player 
# - 走行距離[cm]
# @public
scoreboard objectives add SprintDistance custom:sprint_one_cm

#> 
# Setting
# @internal
scoreboard objectives add Library.Setting dummy

#> 
# Temp
# @public
scoreboard objectives add Library.Temp dummy

## other
    execute unless score $lib.ver Library.Temp matches 110 run function lib:system/init