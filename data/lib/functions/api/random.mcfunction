#> lib:api/random
#
# - 疑似乱数を返します
# @output score $lib.random lib.temp
#
# @api

#> Temp
# @private
    #declare tag lib.Temp.Random

    summon area_effect_cloud ~ ~ ~ {Tags:["lib.Temp.Random"]}
    execute as @e[distance=..0.01,type=area_effect_cloud,tag=lib.Temp.Random] store result score $lib.random lib.temp run data get entity @s UUID[0]
    kill @e[distance=..0.01,type=area_effect_cloud,tag=lib.Temp.Random]