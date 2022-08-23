#> lib:_index.d
# @private

#> Public
# @public
    #declare tag/function #minecraft:player_tick
    #declare tag/function #minecraft:short_sneak
    #declare storage lib:item_modifier
    #declare item_modifier append_nbt
    #declare item_modifier merge_nbt
    #declare item_modifier replace_nbt
    #declare tag Temp.PosCheck
    #declare tag Temp.ShortSneak
    #declare tag Move
    #declare score_holder $lib.random

#> UUID
# @internal
    #declare entity 7F-22-8-22-0 疑似乱数生成用AEC

#> Setting
# @public
    #declare score_holder $lib.short_sneak

#> Version
# @public
    #declare score_holder $lib.ver