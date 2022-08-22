#> akarin_pvp:craft/skill_item
# @within advancement akarin_pvp:craft/skill_item

playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1.5
clear @s knowledge_book

    execute if entity @s[tag=People] run give @s minecraft:redstone{ASP:{Type:"spped"},display:{Name:'{"text":"逃走者の本気","color":"red","bold":true,"italic":true}',Lore:['{"text":"10秒間早くなる"}']}}
    execute if entity @s[tag=Esper] run give @s minecraft:heart_of_the_sea{ASP:{Type:"time_stop"},display:{Name:'{"text":"ざ・わーるど","color":"blue","bold":true,"italic":true}',Lore:['{"text":"10秒間時を止める"}']}}
    execute if entity @s[tag=Onlooker] run give @s minecraft:armor_stand{ASP:{Type:"camera",DropSet:{Tags:["Sensor"],DisabledSlots:4096,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I; -537306653, -1613936669, -1969863344, 758743507],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2ZkMzNiZjNlMGE3Mzg1N2JlNzNhNTA4NmQyYTYyYzM5Nzg3ZGRhYTM4NTA0NjE1NWZjNjgxNTNjODJhNzZmYiJ9fX0="}]}}}}]}},display:{Name:'"カメラ"',Lore:['{"text":"設置した場所の付近にいるプレイヤーを発光させる","color":"dark_purple"}']}} 3
    execute if entity @s[tag=Panya] run give @a[team=Pink,distance=..5,sort=nearest,limit=2] minecraft:cooked_beef 16
    execute if entity @s[tag=Hider] run give @a[team=Pink,distance=..5,sort=nearest,limit=2] slime_ball{ASP:{Type:"invisibility"},display:{Name:'{"text":"透明化ボール","color":"green","bold":true,"italic":true}',Lore:['{"text":"10秒間透明になれる","color":"dark_purple"}']}}

recipe take @s akarin_pvp:skill_item
advancement revoke @s only akarin_pvp:craft/skill_item