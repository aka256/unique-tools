#> uniquetools:core/mine_block_range_with_ench/5x5_s0_f3/
#
# @within uniquetools:core/mine_block_range_with_ench/main

# 方位ごとに分岐
  execute if score $t0 uniquetools.temp = $t3 uniquetools.temp if score $t1 uniquetools.temp = $t4 uniquetools.temp unless score $t2 uniquetools.temp = $t5 uniquetools.temp as @e[tag=uniquetools.target_center_entity] run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f3/north-south
  execute if score $t0 uniquetools.temp = $t3 uniquetools.temp unless score $t1 uniquetools.temp = $t4 uniquetools.temp if score $t2 uniquetools.temp = $t5 uniquetools.temp as @e[tag=uniquetools.target_center_entity] run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f3/up-down
  execute unless score $t0 uniquetools.temp = $t3 uniquetools.temp if score $t1 uniquetools.temp = $t4 uniquetools.temp if score $t2 uniquetools.temp = $t5 uniquetools.temp as @e[tag=uniquetools.target_center_entity] run function uniquetools:core/mine_block_range_with_ench/5x5_s0_f3/east-west
