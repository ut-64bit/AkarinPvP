#> asset:hueoni/player/adv/
# @within tag/function asset:hueoni/finish/adv

execute if entity @s[advancements={akarin_pvp:pvp_adv/hueoni/used_totem=false}] if score @s PvP.Used.Totem matches 1.. run advancement grant @s only akarin_pvp:pvp_adv/hueoni/used_totem
execute if entity @s[advancements={akarin_pvp:pvp_adv/hueoni/used_totem5=false}] if score @s PvP.Used.Totem matches 5.. run advancement grant @s only akarin_pvp:pvp_adv/hueoni/used_totem5

