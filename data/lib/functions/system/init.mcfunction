#> lib:system/init
# @within function lib:system/load

# バージョン設定
    scoreboard players set $lib.ver lib.temp 100

# スコア初期化
    scoreboard players set $lib.short_sneak lib.temp 10

# ストレージ作成
    data merge storage lib:item_modifier {}