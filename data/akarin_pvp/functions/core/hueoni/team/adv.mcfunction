#> akarin_pvp:core/hueoni/team/adv
# @within function akarin_pvp:core/hueoni/finish/players

execute if entity @s[advancements={akarin_pvp:pvp_adv/hueoni/check/used_totem=true,akarin_pvp:pvp_adv/hueoni/used_totem=false}] run advancement grant @s only akarin_pvp:pvp_adv/hueoni/used_totem

