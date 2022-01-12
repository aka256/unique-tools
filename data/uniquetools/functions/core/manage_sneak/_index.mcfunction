#> uniquetools:core/manage_sneak/_index
# @private

#>
# スニークを短時間の間に2回行ったプレイヤーに付与するタグ
# ツールなどの設定を行うトリガーとなる
# @internal
#declare tag uniquetools.sneaked_twice

#>
# スニークを1回押したプレイヤー
# @within uniquetools:core/manage_sneak/**
#declare tag uniquetools.core.manage_sneak.pushed_once

#>
# スニークを2回押したプレイヤー
# @within uniquetools:core/manage_sneak/**
#declare tag uniquetools.core.manage_sneak.pushed_twice

#>
# 現在のtickにおいて1回目のスニークを押しているプレイヤー
# @within uniquetools:core/manage_sneak/**
#declare tag uniquetools.core.manage_sneak.pushing_once

#>
# 現在のtickにおいて2回目のスニークを押しているプレイヤー
# @within uniquetools:core/manage_sneak/**
#declare tag uniquetools.core.manage_sneak.pushing_twice

# pushed_twice --(スニーク実行)--> pushing_once --(スニーク解除)--> pushed_once --(スニーク実行)--> pushing_twice --(スニーク解除)--> sneaked_twice -> pushed_twice
#                                                                      │                                                                               ↑
#                                                                      └──────────────────────────(1秒経過)────────────────────────────────────────────┘

#>
# @within uniquetools:core/manage_sneak/**
#declare tag uniquetools.sneak_processed