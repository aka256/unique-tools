#> uniquetools:expand_axe/rec_ench
#
# expand_axeに付与されているエンチャントの取得
# 負荷が高ければ変更する可能性あり
#
# @within uniquetools:expand_axe/use

# 該当するidか確認&lvl代入
  data modify storage uniquetools.__temp__:expand_axe __temp__.source_ench_id set from storage uniquetools.__temp__:expand_axe __temp__.ench[-1].id
  execute if data storage uniquetools.__temp__:expand_axe {__temp__:{source_ench_id:"minecraft:silk_touch"}} store result storage uniquetools.__temp__:core/mine_block_range_with_ench __input__.silk_touch int 1 run data get storage uniquetools.__temp__:expand_axe __temp__.ench[-1].lvl
  execute if data storage uniquetools.__temp__:expand_axe {__temp__:{source_ench_id:"minecraft:fortune"}} store result storage uniquetools.__temp__:core/mine_block_range_with_ench __input__.fortune int 1 run data get storage uniquetools.__temp__:expand_axe __temp__.ench[-1].lvl

# enchの末尾を削除
  data remove storage uniquetools.__temp__:expand_axe __temp__.ench[-1]

# ループ判定
  execute if data storage uniquetools.__temp__:expand_axe __temp__.ench[0] run function uniquetools:expand_axe/rec_ench
