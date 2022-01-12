#> uniquetools:core/mine_block_range_with_ench/main3
#
# @context uniquetools.core.mine_block_range_with_ench.target_entity
#
# @within uniquetools:core/mine_block_range_with_ench/main2

# フィルター
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3}} run function uniquetools:core/mine_block_range_with_ench/filtering_3x3
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5}} run function uniquetools:core/mine_block_range_with_ench/filtering_5x5

# inputに応じて分岐
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 0}} run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f0
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 0}} run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f0
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 1}} run function uniquetools:core/mine_block_range_with_ench/3x3_s1_f0
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 1}} run function uniquetools:core/mine_block_range_with_ench/5x5_s1_f0
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 1}} run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f1
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 1}} run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f1
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 2}} run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f2
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 2}} run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f2
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 3, silk_touch: 0, fortune: 3}} run function uniquetools:core/mine_block_range_with_ench/3x3_s0_f3
  execute if data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size: 5, silk_touch: 0, fortune: 3}} run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f3

# kill
  kill @s