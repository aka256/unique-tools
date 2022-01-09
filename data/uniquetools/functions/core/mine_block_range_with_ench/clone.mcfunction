#> uniquetools:core/mine_block_range_with_ench/clone
#
# フィルター用のブロックを一時的に保持する
#
# @context クローン元のエンティティ
#
# @internal

execute at @s run loot replace entity @e[tag=uniquetools.core.mine_block_range_with_ench.loot_stored_entity,limit=1] weapon.mainhand mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block set from entity @e[tag=uniquetools.core.mine_block_range_with_ench.loot_stored_entity,limit=1] HandItems[0].id