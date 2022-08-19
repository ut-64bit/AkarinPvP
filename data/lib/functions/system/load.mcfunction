#> lib:system/load
# @internal

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

# スコアホルダー作成
    ## number
        scoreboard players set $1 lib.temp 1
        scoreboard players set $2 lib.temp 2
        scoreboard players set $3 lib.temp 3
        scoreboard players set $4 lib.temp 4
        scoreboard players set $5 lib.temp 5
        scoreboard players set $6 lib.temp 6
        scoreboard players set $7 lib.temp 7
        scoreboard players set $8 lib.temp 8
        scoreboard players set $9 lib.temp 9
        scoreboard players set $10 lib.temp 10

    ## other
        execute unless score $lib.ver lib.temp matches 100 run function lib:system/init