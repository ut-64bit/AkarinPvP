#> akarin_pvp:core/gun_pvp/main
# @within function akarin_pvp:tick

execute as @a[team=Blue] if score @s PvP.Death matches 1.. run function akarin_pvp:core/gun_pvp/team/red/kill
execute as @a[team=Red] if score @s PvP.Death matches 1.. run function akarin_pvp:core/gun_pvp/team/blue/kill

function akarin_pvp:core/gun_pvp/finish/check