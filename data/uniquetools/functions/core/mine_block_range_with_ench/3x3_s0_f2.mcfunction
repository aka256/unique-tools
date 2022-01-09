#> uniquetools:core/mine_block_range_with_ench/3x3_s0_f0
#
# @within uniquetools:core/mine_block_range_with_ench/main

execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][0]._{flg: true} run loot spawn ~ ~ ~ mine ^-1 ^-1 ^ diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0s}, {id:"fortune", lvl:0s}]}
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][0]._{flg: true} run setblock ^-1 ^-1 ^ air
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][1]._{flg: true} run loot spawn ~ ~ ~ mine ^-1 ^0 ^ diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0s}, {id:"fortune", lvl:0s}]}
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][1]._{flg: true} run setblock ^-1 ^0 ^ air
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][2]._{flg: true} run loot spawn ~ ~ ~ mine ^-1 ^1 ^ diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0s}, {id:"fortune", lvl:0s}]}
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[0][2]._{flg: true} run setblock ^-1 ^1 ^ air
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[1][0]._{flg: true} run loot spawn ~ ~ ~ mine ^0 ^-1 ^ diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0s}, {id:"fortune", lvl:0s}]}
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[1][0]._{flg: true} run setblock ^0 ^-1 ^ air
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[1][2]._{flg: true} run loot spawn ~ ~ ~ mine ^0 ^1 ^ diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0s}, {id:"fortune", lvl:0s}]}
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[1][2]._{flg: true} run setblock ^0 ^1 ^ air
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][0]._{flg: true} run loot spawn ~ ~ ~ mine ^1 ^-1 ^ diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0s}, {id:"fortune", lvl:0s}]}
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][0]._{flg: true} run setblock ^1 ^-1 ^ air
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][1]._{flg: true} run loot spawn ~ ~ ~ mine ^1 ^0 ^ diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0s}, {id:"fortune", lvl:0s}]}
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][1]._{flg: true} run setblock ^1 ^0 ^ air
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][2]._{flg: true} run loot spawn ~ ~ ~ mine ^1 ^1 ^ diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0s}, {id:"fortune", lvl:0s}]}
execute unless data storage uniquetools.__temp__:core/mine_block_range_with_ench __temp__.non_destruction_filter[2][2]._{flg: true} run setblock ^1 ^1 ^ air
