#> uniquetools:core/get_target_block/rec_shovel2
#
# @within uniquetools:core/get_target_block/rec_shovel

# 1歩前進
  tp @s ^ ^ ^0.05

# インクリメント
  scoreboard players add $t0 uniquetools.temp 1

# 
  function uniquetools:core/get_target_block/rec_pickaxe