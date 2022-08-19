#> akarin_pvp:core/hueoni/team/explanation/hider
# @internal

tellraw @s {"text":"-- ハイダー --","color":"green"}
tellraw @s " 姿を消すことができる逃走者"
tellraw @s " しかし、通常時と比べ早く満腹度が減少し、身動きも取れなくなるようだ"
tellraw @s ""
tellraw @s ""
tellraw @s {"text":"- Ability -","hoverEvent": { "action": "show_text","value": {"text": "アイテムを消費せずに使える能力"}},"color":"green"}
tellraw @s [{"text": " Active","color": "red"},{"text": "- ハイド","hoverEvent": { "action": "show_text","value": [{"text": "Tips\n近くにいると黒い靄が見える"}]},"color": "white"}]
tellraw @s ["  [",{"keybind":"key.sneak","color": "yellow"},{"text":"]","color": "white"}]
tellraw @s " > 姿を消すことができる"
tellraw @s " > ただし、満腹度の減少が早くなり、移動ができなくなる"
tellraw @s ""
