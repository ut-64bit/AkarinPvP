#> akarin_pvp:core/hueoni/stamina/actionbar
# @within tag/function akarin_pvp:stamina

#> Temp
# @private
    #declare storage minecraft:actionbar

    execute if score $stamina PvP.Stamina matches 91.. run data merge storage actionbar {Text:"|■■■■■■■■■■|"}
    execute if score $stamina PvP.Stamina matches 81..90 run data merge storage actionbar {Text:"|■■■■■■■■■□|"}
    execute if score $stamina PvP.Stamina matches 71..80 run data merge storage actionbar {Text:"|■■■■■■■■□□|"}
    execute if score $stamina PvP.Stamina matches 61..70 run data merge storage actionbar {Text:"|■■■■■■■□□□|"}
    execute if score $stamina PvP.Stamina matches 51..60 run data merge storage actionbar {Text:"|■■■■■■□□□□|"}
    execute if score $stamina PvP.Stamina matches 41..50 run data merge storage actionbar {Text:"|■■■■■□□□□□|"}
    execute if score $stamina PvP.Stamina matches 31..40 run data merge storage actionbar {Text:"|■■■■□□□□□□|"}
    execute if score $stamina PvP.Stamina matches 21..30 run data merge storage actionbar {Text:"|■■■□□□□□□□|"}
    execute if score $stamina PvP.Stamina matches 11..20 run data merge storage actionbar {Text:"|■■□□□□□□□□|"}
    execute if score $stamina PvP.Stamina matches 1..10 run data merge storage actionbar {Text:"|■□□□□□□□□□|"}
    execute if score $stamina PvP.Stamina matches ..0 run data merge storage actionbar {Text:"|□□□□□□□□□□|"}
    execute if score @s PvP.MaxStamina matches 0 run data merge storage actionbar {Text:"| ∞ |"}

    execute if score $stamina PvP.Stamina matches 1.. if predicate lib:flag/sprinting run effect give @s speed 1 0 true
    execute if score $stamina PvP.Stamina matches ..50 if predicate lib:flag/sprinting run effect give @s hunger 1 1 true
    execute if score $stamina PvP.Stamina matches ..50 run effect give @s hunger 1 0 true
    execute if score $stamina PvP.Stamina matches ..20 run effect give @s slowness 1 1 true

    title @s actionbar {"nbt":"text","storage":"actionbar","color":"gold"}
    execute if entity @s[tag=Esper] at @s if entity @a[team=Green,distance=..36] run title @s actionbar [{"text":"| 近くに鬼の気配がする... |   ","color":"red"},{"nbt":"Text","storage":"actionbar","color":"gold"}]

    data remove storage actionbar Text