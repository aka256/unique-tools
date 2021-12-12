#> uniquetools:core/get_target_block/rec_axe
#
# @within uniquetools:core/get_target_block/**

# 1歩前進
  execute at @s run tp @s ^ ^ ^0.05

# インクリメント
  scoreboard players add $t0 uniquetools.temp 1

# 分岐
  execute if score $t0 uniquetools.temp < TARGET_RANGE_LIMIT uniquetools.const at @s if block ~ ~0.5 ~ #minecraft:mineable/axe as @s run function uniquetools:core/get_target_block/ok
  execute if score $t0 uniquetools.temp < TARGET_RANGE_LIMIT uniquetools.const at @s unless block ~ ~0.5 ~ #minecraft:mineable/axe unless block ~ ~0.5 ~ #uniquetools:air run scoreboard players operation $t0 uniquetools.temp = TARGET_RANGE_LIMIT uniquetools.const
  execute if score $t0 uniquetools.temp < TARGET_RANGE_LIMIT uniquetools.const at @s if block ~ ~0.5 ~ #uniquetools:air as @s run function uniquetools:core/get_target_block/rec_axe

  execute if score $0 uniquetools.temp = TARGET_RANGE_LIMIT uniquetools.const as @s run function uniquetools:core/get_target_block/ng