#> uniquetools:core/get_target_block/rec_shovel
#
# @context uniquetools.core.get_target_block.detect
#
# @within
#   uniquetools:core/get_target_block/main
#   uniquetools:core/get_target_block/rec_shovel2

# 分岐
  execute if score $t0 uniquetools.temp < TARGET_RANGE_LIMIT uniquetools.const at @s if block ~ ~ ~ #minecraft:mineable/shovel run function uniquetools:core/get_target_block/ok
  execute if score $t0 uniquetools.temp < TARGET_RANGE_LIMIT uniquetools.const at @s unless block ~ ~ ~ #minecraft:mineable/shovel unless block ~ ~ ~ #uniquetools:air run scoreboard players operation $t0 uniquetools.temp = TARGET_RANGE_LIMIT uniquetools.const
  execute if score $t0 uniquetools.temp < TARGET_RANGE_LIMIT uniquetools.const at @s if block ~ ~ ~ #uniquetools:air run function uniquetools:core/get_target_block/rec_shovel2
  execute if score $t0 uniquetools.temp = TARGET_RANGE_LIMIT uniquetools.const run function uniquetools:core/get_target_block/ng
