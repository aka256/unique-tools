#> uniquetools:core/mine_block_range/dir_3x3/up-down
#
# @within uniquetools:core/mine_block_range/3x3

execute at @s if blocks ~-1 ~ ~-1 ~-1 ~ ~-1 0 -64 0 all run setblock ~-1 ~ ~-1 minecraft:air destroy
execute at @s if blocks ~-1 ~ ~0 ~-1 ~ ~0 0 -64 0 all run setblock ~-1 ~ ~0 minecraft:air destroy
execute at @s if blocks ~-1 ~ ~1 ~-1 ~ ~1 0 -64 0 all run setblock ~-1 ~ ~1 minecraft:air destroy
execute at @s if blocks ~0 ~ ~-1 ~0 ~ ~-1 0 -64 0 all run setblock ~0 ~ ~-1 minecraft:air destroy
execute at @s if blocks ~0 ~ ~0 ~0 ~ ~0 0 -64 0 all run setblock ~0 ~ ~0 minecraft:air destroy
execute at @s if blocks ~0 ~ ~1 ~0 ~ ~1 0 -64 0 all run setblock ~0 ~ ~1 minecraft:air destroy
execute at @s if blocks ~1 ~ ~-1 ~1 ~ ~-1 0 -64 0 all run setblock ~1 ~ ~-1 minecraft:air destroy
execute at @s if blocks ~1 ~ ~0 ~1 ~ ~0 0 -64 0 all run setblock ~1 ~ ~0 minecraft:air destroy
execute at @s if blocks ~1 ~ ~1 ~1 ~ ~1 0 -64 0 all run setblock ~1 ~ ~1 minecraft:air destroy