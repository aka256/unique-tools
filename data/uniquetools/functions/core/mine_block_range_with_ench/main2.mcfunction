#> uniquetools:core/mine_block_range_with_ench/main2
#
# @context uniquetools.core.get_target_block.center && uniquetools.core.mine_block_range_with_ench.selected_target
#
# @within uniquetools:core/mine_block_range_with_ench/main

# uniquetools.core.mine_block_range_with_ench.target_entityの召喚&target_center_entityの位置からtarget_surface_entityを見るよう設置
  execute at @s run summon armor_stand ~ ~ ~ {Tags:["uniquetools.core.mine_block_range_with_ench.target_entity"], NoGravity:true, Marker:true, Invisible:true}
  execute at @s as @e[distance=..5,tag=uniquetools.core.get_target_block.surface] if score @s uniquetools.id = $t0 uniquetools.temp run tp @e[distance=..5,tag=uniquetools.core.mine_block_range_with_ench.target_entity] ~ ~ ~ facing entity @s

#
  execute at @s as @e[distance=..5,tag=uniquetools.core.mine_block_range_with_ench.target_entity] at @s run function uniquetools:core/mine_block_range_with_ench/main3
