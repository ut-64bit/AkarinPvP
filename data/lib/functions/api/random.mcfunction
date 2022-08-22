#> lib:api/random
#
# - 疑似乱数を返します
# - 返り値: $lib.random Library.Temp
#
# @api

#> Temp
# @private
    #declare tag Temp.Random

    summon area_effect_cloud ~ ~ ~ {Tags:["Temp.Random"]}
    execute as @e[type=area_effect_cloud,tag=Temp.Random,distance=..0.01] store result score $lib.random Library.Temp run data get entity @s UUID[0]
    kill @e[type=area_effect_cloud,tag=Temp.Random,distance=..0.01]