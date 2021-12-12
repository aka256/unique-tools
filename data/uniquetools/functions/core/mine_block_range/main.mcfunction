#> uniquetools:core/mine_block_range/main
#
# uniquetools.target_center_entityを中心とした範囲を採掘する
# **事前にuniquetools:core/get_target_block/mainを実行する必要あり**
#
# @input
#   storage uniquetools.__temp__:core/mine_block_range __input__
#     size: int
#       3x3, 5x5
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
  execute if data storage uniquetools.__temp__:core/mine_block_range {__input__:{size:3}} run function uniquetools:core/mine_block_range/3x3
  execute if data storage uniquetools.__temp__:core/mine_block_range {__input__:{size:5}} run function uniquetools:core/mine_block_range/5x5
