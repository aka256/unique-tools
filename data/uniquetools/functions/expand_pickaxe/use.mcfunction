#> uniquetools:expand_pickaxe/use
#
# @within uniquetools:expand_pickaxe/tick
say use
# サイズの指定
  execute as @s[tag=uniquetools.use.expand_pickaxe_mark1] store result storage uniquetools.__temp__:core/mine_block_range_with_ench __input__.size int 1 run scoreboard players get @s uniquetools.config.expand_pickaxe_mark1.size
  execute as @s[tag=uniquetools.use.expand_pickaxe_mark2] store result storage uniquetools.__temp__:core/mine_block_range_with_ench __input__.size int 1 run scoreboard players get @s uniquetools.config.expand_pickaxe_mark2.size

# エンチャントの指定
  data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __input__.silk_touch set value 0
  data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __input__.fortune set value 0
  data modify storage uniquetools.__temp__:expand_pickaxe __temp__.ench set from entity @s SelectedItem.tag.Enchantments
  execute if data storage uniquetools.__temp__:expand_pickaxe __temp__.ench[0] run function uniquetools:expand_pickaxe/rec_ench

# 3x3もしくは5x5であればcore/mine_block_range_with_enchの実行
  execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench {__input__:{size:1}} run function uniquetools:core/mine_block_range_with_ench/main
