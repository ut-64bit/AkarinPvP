#> akarin_pvp:craft/totem
# @within advancement akarin_pvp:craft/totem

playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1.5 0.5
clear @s knowledge_book
give @s totem_of_undying{Type:give_chance,display:{Name:'{"text":"与えられた猶予","color":"yellow","bold":true,"italic":true}',Lore:['{"text":"1回切られても死なず足が速くなる","color":"light_purple","bold":true}']}} 1
recipe take @s akarin_pvp:totem
advancement revoke @s only akarin_pvp:carft/totem