#> lib:system/init
# @within function lib:system/load

# バージョン設定
    scoreboard players set $lib.ver Library.Temp 110

# スコア初期化
    scoreboard players set $lib.short_sneak Library.Setting 5

# ストレージ作成
    data merge storage lib:item_modifier {}