#> uniquetools:core/mine_block_range_with_ench/main
#
# uniquetools.target_center_entityを中心とした範囲を採掘する
# エンチャントを適用可(silk_touchが優先的に適用される)
# **事前にuniquetools:core/get_target_block/mainを実行する必要あり**
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

# エンティティの座標をスコアに代入
  execute store result score $t0 uniquetools.temp run data get entity @e[tag=uniquetools.target_center_entity, limit=1] Pos[0] 1
  execute store result score $t1 uniquetools.temp run data get entity @e[tag=uniquetools.target_center_entity, limit=1] Pos[1] 1
  execute store result score $t2 uniquetools.temp run data get entity @e[tag=uniquetools.target_center_entity, limit=1] Pos[2] 1
  execute store result score $t3 uniquetools.temp run data get entity @e[tag=uniquetools.target_surface_entity, limit=1] Pos[0] 1
  execute store result score $t4 uniquetools.temp run data get entity @e[tag=uniquetools.target_surface_entity, limit=1] Pos[1] 1
  execute store result score $t5 uniquetools.temp run data get entity @e[tag=uniquetools.target_surface_entity, limit=1] Pos[2] 1

# inputに応じて分岐
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 0}} run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f0/
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 0}} run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f0/
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 1}} run function uniquetools:core/mine_block_range_with_ench/3x3_s1_f0/
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 1}} run function uniquetools:core/mine_block_range_with_ench/5x5_s1_f0/
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 1}} run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f1/
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 1}} run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f1/
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 2}} run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f2/
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 2}} run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f2/
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 3}} run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f3/
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 3}} run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f3/
