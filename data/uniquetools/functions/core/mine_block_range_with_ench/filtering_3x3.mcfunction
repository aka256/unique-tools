#> uniquetools:core/mine_block_range_with_ench/filtering_3x3
#
# @within uniquetools:core/mine_block_range_with_ench/main

data merge storage uniquetools.__temp__:core/mine_block_range_with_ench {__temp__:{non_destruction_filter:[[{_:{flg: 0b}}, {_:{flg: 0b}}, {_:{flg: 0b}}], [{_:{flg: 0b}}, {_:{flg: 1b}}, {_:{flg: 0b}}], [{_:{flg: 0b}}, {_:{flg: 0b}}, {_:{flg: 0b}}]]}}

execute at @s run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^-1 ^-1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][0]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block
execute at @s run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^-1 ^0 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][1]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block
execute at @s run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^-1 ^1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][2]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block
execute at @s run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^0 ^-1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[1][0]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block
execute at @s run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^0 ^1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[1][2]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block
execute at @s run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^1 ^-1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][0]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block
execute at @s run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^1 ^0 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][1]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block
execute at @s run loot replace entity 00001000-0000-1000-0000-100000001000 armor.head mine ^1 ^1 ^ diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from entity 00001000-0000-1000-0000-100000001000 ArmorItems[3].id
execute store success storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][2]._.flg byte 1 run data modify storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.source_block set from storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.target_block
