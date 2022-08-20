#> akarin_pvp:core/hueoni/start/players
# @within function akarin_pvp:core/hueoni/start/

#> temp
# @private
    #declare tag kill

# 進捗
    scoreboard players reset @s pvp.used_totem
    advancement revoke @s only akarin_pvp:pvp_adv/hueoni/check/used/special_item

# Job
    ## tag
        tag @s remove People
        tag @s remove Esper
        tag @s remove Hider
        tag @s remove Panya
        tag @s remove Onlooker
        tag @s remove Maguro
        tag @s remove Normal
        tag @s remove Stalker
        tag @s remove Assassin

    ## 変更できないように
        execute if entity @s[team=Pink] if score @s pvp.job matches 1 run tag @s add People
        execute if entity @s[team=Pink] if score @s pvp.job matches 2 run tag @s add Esper
        execute if entity @s[team=Pink] if score @s pvp.job matches 3 run tag @s add Hider
        execute if entity @s[team=Pink] if score @s pvp.job matches 4 run tag @s add Panya
        execute if entity @s[team=Pink] if score @s pvp.job matches 5 run tag @s add Onlooker
        execute if entity @s[team=Pink] if score @s pvp.job matches 6 run tag @s add Maguro

        execute if entity @s[team=Green] if score @s pvp.job matches 1 run tag @s add Normal
        execute if entity @s[team=Green] if score @s pvp.job matches 2 run tag @s add Stalker
        execute if entity @s[team=Green] if score @s pvp.job matches 3 run tag @s add Assassin

# ステータス
    ## 鬼
        ### 移動速度
            execute if entity @s[team=Green] if entity @s[tag=Normal] run attribute @s generic.movement_speed base set 0.12
            execute if entity @s[team=Green] if entity @s[tag=Stalker] run attribute @s generic.movement_speed base set 0.11
            execute if entity @s[team=Green] if entity @s[tag=Assassin] run attribute @s generic.movement_speed base set 0.12

        ### 攻撃力
            execute if entity @s[team=Green] unless entity @s[tag=Assassin] run attribute @s generic.attack_damage base set 20.0

        ### 攻撃速度
            execute if entity @s[team=Green] if entity @s[tag=Normal] run attribute @s generic.attack_speed base set 1.0
            execute if entity @s[team=Green] if entity @s[tag=Stalker] run attribute @s generic.attack_speed base set 0.5
            execute if entity @s[team=Green] if entity @s[tag=Assassin] run attribute @s generic.attack_speed base set 0.5

    ## 逃走者
        ### 移動速度
            execute if entity @s[team=Pink] if entity @s[tag=People] run attribute @s generic.movement_speed base set 0.1
            execute if entity @s[team=Pink] if entity @s[tag=Esper] run attribute @s generic.movement_speed base set 0.09
            execute if entity @s[team=Pink] if entity @s[tag=Hider] run attribute @s generic.movement_speed base set 0.1
            execute if entity @s[team=Pink] if entity @s[tag=Panya] run attribute @s generic.movement_speed base set 0.1
            execute if entity @s[team=Pink] if entity @s[tag=Onlooker] run attribute @s generic.movement_speed base set 0.1
            execute if entity @s[team=Pink] if entity @s[tag=Maguro] run attribute @s generic.movement_speed base set 0.11

# 開始処理
    ## リス地
        spawnpoint @s -161 -7 52
        execute if entity @s[team=Green] run tp @s -145 0 83

    ## 演出
        playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
        title @s title "鬼ごっこ開始!"
        effect clear @s

    ## kill
        execute if block ~ ~-1 ~ minecraft:crying_obsidian run tag @s add kill
        execute if entity @s[tag=kill] run tellraw @a [{"selector":"@s"},{"text":"は初期地点にいたので死んでしまった!","color": "white"}]
        execute if entity @s[tag=kill] run kill @s
        execute if entity @s[tag=kill] run tag @s remove kill

    ## アイテム
        execute if entity @s[tag=Assassin] run give @s minecraft:iron_sword{display: {Name: '{"text":"ナイフ","color":"red"}', Lore: ['"アサシン専用武器"', '"アサシン唯一無二の攻撃手段"']}, Unbreakable: 1, HideFlags: 7, AttributeModifiers: [{AttributeName: "generic.attack_speed", Amount: 5, Operation: 0, Slot: "mainhand", UUID: [I; 797627813, -210550115, 687549437, -756019680]}], Enchantments: [{id: "unbreaking"}]}
        execute if entity @s[team=Pink] run give @s minecraft:tripwire_hook{Type: key, display: {Name: '"鍵"', Lore: ['{"text":"チェストを開けるための鍵"}']}, Enchantments: [{id: "minecraft:unbreaking"}], HideFlags: 1}
        execute if entity @s[tag=Onlooker] run give @s minecraft:armor_stand{display: {Name: '"カメラ"', Lore: ['{"text":"設置した場所の付近にいるプレイヤーを発光させる","color":"dark_purple"}']}, EntityTag: {Tags: ["sensor"], DisabledSlots: 4096, Invisible: 1b, NoBasePlate: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; -537306653, -1613936669, -1969863344, 758743507], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2ZkMzNiZjNlMGE3Mzg1N2JlNzNhNTA4NmQyYTYyYzM5Nzg3ZGRhYTM4NTA0NjE1NWZjNjgxNTNjODJhNzZmYiJ9fX0="}]}}}}]}} 3
        execute if entity @s[team=Pink] run scoreboard players operation @s pvp.stamina = @s pvp.max_stamina
        execute if entity @s[team=Pink] run scoreboard players set @s pvp.cool 0
        execute if entity @s[team=Pink] run scoreboard players set @s pvp.stamina_s 0

    ## Job説明
        execute if entity @s[tag=Esper] run function akarin_pvp:core/hueoni/team/explanation/esper
        execute if entity @s[tag=Hider] run function akarin_pvp:core/hueoni/team/explanation/hider
        execute if entity @s[tag=Assassin] run function akarin_pvp:core/hueoni/team/explanation/assassin
        execute if entity @s[tag=Panya] run function akarin_pvp:core/hueoni/team/explanation/panya
        execute if entity @s[tag=Stalker] run function akarin_pvp:core/hueoni/team/explanation/stalker
        execute if entity @s[tag=Onlooker] run function akarin_pvp:core/hueoni/team/explanation/onlooker
        execute if entity @s[tag=Maguro] run function akarin_pvp:core/hueoni/team/explanation/maguro

    scoreboard players reset * pvp.break

    trigger pvp.job_select set 0
    scoreboard players set @s pvp.job_select 0