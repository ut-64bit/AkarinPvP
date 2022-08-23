#> lib:system/load
# @within tag/function minecraft:load

# スコアボード作成

#> 
# Player
# - スニーク時間[tick]
# @public
scoreboard objectives add SneakTime dummy

#> 
# Player 
# - 走行時間[cm]
# @public
scoreboard objectives add SprintDistance dummy

#> 
# Setting
# @internal
scoreboard objectives add Library.Setting dummy

#> 
# Temp
# @public
scoreboard objectives add Library.Temp dummy

## other
    execute unless score $lib.ver Library.Temp matches 111 run function lib:system/init