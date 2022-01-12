#> uniquetools:core/mine_block_range_with_ench/main
#
# uniquetools.core.get_target_block.centerを中心とした範囲を採掘する
# エンチャントを適用可(silk_touchが優先的に適用される)
# **事前にuniquetools:core/get_target_block/mainを実行する必要あり**
#
# @context
#   ブロックを破壊したプレイヤー
#
# @input
#   storage uniquetools.__temp__:core/mine_block_range_with_tool __input__
#     size: int
#       3, 5
#     silk_touch: int
#       0, 1
#     fortune: int
#       0, 1, 2, 3
#
# @internal

# プレイヤーが破壊したブロックのidを取得
  function #oh_my_dat:please
  data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block

# idの一致するエンティティの取得
  scoreboard players operation $t0 uniquetools.temp = @s uniquetools.id
  execute at @s as @e[distance=..10,tag=uniquetools.core.get_target_block.center] if score @s uniquetools.id = $t0 uniquetools.temp run tag @s add uniquetools.core.mine_block_range_with_ench.selected_target
  execute at @s as @e[distance=..10,tag=uniquetools.core.get_target_block.surface] if score @s uniquetools.id = $t0 uniquetools.temp run tag @s add uniquetools.core.mine_block_range_with_ench.selected_target

# uniquetools.core.get_target_block_centerの位置の状態による分岐
  execute at @s as @e[distance=..10,tag=uniquetools.core.get_target_block.center,tag=uniquetools.core.mine_block_range_with_ench.selected_target] at @s if block ~ ~ ~ #uniquetools:air run function uniquetools:core/mine_block_range_with_ench/main2
