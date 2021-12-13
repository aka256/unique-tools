#> uniquetools:core/mine_block_range_with_ench/3x3_s0_f3/up-down
#
# @within uniquetools:core/mine_block_range_with_ench/3x3_s0_f3/

execute at @s if blocks ~-1 ~ ~-1 ~-1 ~ ~-1 0 -64 0 all run loot spawn ~ ~ ~ mine ~-1 ~ ~-1 diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0}, {id:"fortune", lvl:3}]}
execute at @s if blocks ~-1 ~ ~-1 ~-1 ~ ~-1 0 -64 0 all run setblock ~-1 ~ ~-1 air
execute at @s if blocks ~-1 ~ ~0 ~-1 ~ ~0 0 -64 0 all run loot spawn ~ ~ ~ mine ~-1 ~ ~0 diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0}, {id:"fortune", lvl:3}]}
execute at @s if blocks ~-1 ~ ~0 ~-1 ~ ~0 0 -64 0 all run setblock ~-1 ~ ~0 air
execute at @s if blocks ~-1 ~ ~1 ~-1 ~ ~1 0 -64 0 all run loot spawn ~ ~ ~ mine ~-1 ~ ~1 diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0}, {id:"fortune", lvl:3}]}
execute at @s if blocks ~-1 ~ ~1 ~-1 ~ ~1 0 -64 0 all run setblock ~-1 ~ ~1 air
execute at @s if blocks ~0 ~ ~-1 ~0 ~ ~-1 0 -64 0 all run loot spawn ~ ~ ~ mine ~0 ~ ~-1 diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0}, {id:"fortune", lvl:3}]}
execute at @s if blocks ~0 ~ ~-1 ~0 ~ ~-1 0 -64 0 all run setblock ~0 ~ ~-1 air
execute at @s if blocks ~0 ~ ~0 ~0 ~ ~0 0 -64 0 all run loot spawn ~ ~ ~ mine ~0 ~ ~0 diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0}, {id:"fortune", lvl:3}]}
execute at @s if blocks ~0 ~ ~0 ~0 ~ ~0 0 -64 0 all run setblock ~0 ~ ~0 air
execute at @s if blocks ~0 ~ ~1 ~0 ~ ~1 0 -64 0 all run loot spawn ~ ~ ~ mine ~0 ~ ~1 diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0}, {id:"fortune", lvl:3}]}
execute at @s if blocks ~0 ~ ~1 ~0 ~ ~1 0 -64 0 all run setblock ~0 ~ ~1 air
execute at @s if blocks ~1 ~ ~-1 ~1 ~ ~-1 0 -64 0 all run loot spawn ~ ~ ~ mine ~1 ~ ~-1 diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0}, {id:"fortune", lvl:3}]}
execute at @s if blocks ~1 ~ ~-1 ~1 ~ ~-1 0 -64 0 all run setblock ~1 ~ ~-1 air
execute at @s if blocks ~1 ~ ~0 ~1 ~ ~0 0 -64 0 all run loot spawn ~ ~ ~ mine ~1 ~ ~0 diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0}, {id:"fortune", lvl:3}]}
execute at @s if blocks ~1 ~ ~0 ~1 ~ ~0 0 -64 0 all run setblock ~1 ~ ~0 air
execute at @s if blocks ~1 ~ ~1 ~1 ~ ~1 0 -64 0 all run loot spawn ~ ~ ~ mine ~1 ~ ~1 diamond_pickaxe{Enchantments:[{id:"silk_touch", lvl:0}, {id:"fortune", lvl:3}]}
execute at @s if blocks ~1 ~ ~1 ~1 ~ ~1 0 -64 0 all run setblock ~1 ~ ~1 air
