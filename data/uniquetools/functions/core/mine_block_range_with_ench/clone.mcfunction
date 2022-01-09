#> uniquetools:core/mine_block_range_with_ench/clone
#
# フィルター用のブロックを一時的に保持する
#
# @context クローン元のエンティティ
#
# @internal

execute at @s run loot replace entity 1000-0-1000-0-100000001000 armor.head mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block set from entity 1000-0-1000-0-100000001000 ArmorItems[3].id
