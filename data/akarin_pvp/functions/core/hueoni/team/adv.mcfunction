#> akarin_pvp:core/hueoni/team/adv
# @within function akarin_pvp:core/hueoni/finish/players

execute if entity @s[advancements={akarin_pvp:pvp_adv/hueoni/used_totem=false}] if score @s PvP.Used.Totem matches 1.. run advancement grant @s only akarin_pvp:pvp_adv/hueoni/used_totem
execute if entity @s[advancements={akarin_pvp:pvp_adv/hueoni/used_totem5=false}] if score @s PvP.Used.Totem matches 5.. run advancement grant @s only akarin_pvp:pvp_adv/hueoni/used_totem5

