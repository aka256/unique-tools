#> uniquetools:core/mine_block_range_with_ench/main
#
# uniquetools.target_center_entityを中心とした範囲を採掘する
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

# uniquetools.core.mine_block_range_with_ench.target_entityの召喚&target_center_entityの位置からtarget_surface_entityを見るよう設置
  execute at @e[tag=uniquetools.target_center_entity] run summon armor_stand ~ ~ ~ {Tags:["uniquetools.core.mine_block_range_with_ench.target_entity"], NoGravity:true}
  execute as @e[tag=uniquetools.target_center_entity] at @s facing entity @e[tag=uniquetools.target_surface_entity] eyes run tp @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] ~ ~ ~ ~ ~

# フィルター
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/filtering_3x3
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/filtering_5x5

# inputに応じて分岐
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 0}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f0
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 0}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f0
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 1}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/3x3_s1_f0
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 1}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/5x5_s1_f0
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 1}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f1
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 1}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f1
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 2}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f2
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 2}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f2
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 3}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f3
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 3}} as @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f3

# kill
  kill @e[tag=uniquetools.core.mine_block_range_with_ench.target_entity]