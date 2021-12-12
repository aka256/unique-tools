#> uniquetools:core/mine_block_range/5x5
#
# @within uniquetools:core/mine_block_range/main

# 方位ごとに分岐
  execute if score $t0 uniquetools.temp = $t3 uniquetools.temp if score $t1 uniquetools.temp = $t4 uniquetools.temp unless score $t2 uniquetools.temp = $t5 uniquetools.temp as @e[tag=uniquetools.target_center_entity] run function uniquetools:core/mine_block_range/dir_5x5/north-south
  execute if score $t0 uniquetools.temp = $t3 uniquetools.temp unless score $t1 uniquetools.temp = $t4 uniquetools.temp if score $t2 uniquetools.temp = $t5 uniquetools.temp as @e[tag=uniquetools.target_center_entity] run function uniquetools:core/mine_block_range/dir_5x5/up-down
  execute unless score $t0 uniquetools.temp = $t3 uniquetools.temp if score $t1 uniquetools.temp = $t4 uniquetools.temp if score $t2 uniquetools.temp = $t5 uniquetools.temp as @e[tag=uniquetools.target_center_entity] run function uniquetools:core/mine_block_range/dir_5x5/east-west
