#> uniquetools:core/mine_block_range_with_ench/filtering_3x3
#
# @within uniquetools:core/mine_block_range_with_ench/main

data merge storage uniquetools.__temp__:core/mine_block_range_with_ench {__temp__:{non_destruction_filter:[[{_:{flg: 1b}}, {_:{flg: 1b}}, {_:{flg: 1b}}], [{_:{flg: 1b}}, {_:{flg: 1b}}, {_:{flg: 1b}}], [{_:{flg: 1b}}, {_:{flg: 1b}}, {_:{flg: 1b}}]]}}

data modify entity 00001000-0000-1000-0000-100000001000 ArmorItems[3] set value {id:"minecraft:bedrock",Count:1b}
execute at @s unless block ^-1 ^-1 ^ #uniquetools:unbreakable run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^-1 ^-1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][0]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
data modify entity 00001000-0000-1000-0000-100000001000 ArmorItems[3] set value {id:"minecraft:bedrock",Count:1b}
execute at @s unless block ^-1 ^0 ^ #uniquetools:unbreakable run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^-1 ^0 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][1]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
data modify entity 00001000-0000-1000-0000-100000001000 ArmorItems[3] set value {id:"minecraft:bedrock",Count:1b}
execute at @s unless block ^-1 ^1 ^ #uniquetools:unbreakable run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^-1 ^1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][2]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
data modify entity 00001000-0000-1000-0000-100000001000 ArmorItems[3] set value {id:"minecraft:bedrock",Count:1b}
execute at @s unless block ^0 ^-1 ^ #uniquetools:unbreakable run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^0 ^-1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[1][0]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
data modify entity 00001000-0000-1000-0000-100000001000 ArmorItems[3] set value {id:"minecraft:bedrock",Count:1b}
execute at @s unless block ^0 ^1 ^ #uniquetools:unbreakable run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^0 ^1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[1][2]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
data modify entity 00001000-0000-1000-0000-100000001000 ArmorItems[3] set value {id:"minecraft:bedrock",Count:1b}
execute at @s unless block ^1 ^-1 ^ #uniquetools:unbreakable run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^1 ^-1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][0]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
data modify entity 00001000-0000-1000-0000-100000001000 ArmorItems[3] set value {id:"minecraft:bedrock",Count:1b}
execute at @s unless block ^1 ^0 ^ #uniquetools:unbreakable run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^1 ^0 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][1]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
data modify entity 00001000-0000-1000-0000-100000001000 ArmorItems[3] set value {id:"minecraft:bedrock",Count:1b}
execute at @s unless block ^1 ^1 ^ #uniquetools:unbreakable run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^1 ^1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][2]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
