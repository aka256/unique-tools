#> uniquetools:core/mine_block_range_with_ench/load
#
# @within uniquetools:load

# uniquetools.core.mine_block_range_with_ench.loot_stored_entityの召喚
  execute unless entity @e[tag=uniquetools.core.mine_block_range_with_ench.loot_stored_entity] run summon armor_stand 0 -70 0 {Tags:["uniquetools.core.mine_block_range_with_ench.loot_stored_entity"], NoGravity:true, Invisible:true}