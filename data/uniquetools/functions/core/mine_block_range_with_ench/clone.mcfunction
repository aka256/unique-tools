#> uniquetools:core/mine_block_range_with_ench/clone
#
# フィルター用のブロックを一時的に保持する
#
# @context ターゲッティングしているブロックのクローンを行いたいプレイヤー
#
# @internal

scoreboard players operation $t0 uniquetools.temp = @s uniquetools.id
execute at @s as @e[distance=..10,tag=uniquetools.core.get_target_block.center] if score @s uniquetools.id = $t0 uniquetools.temp at @s run loot replace entity 1000-0-1000-0-100000001000 armor.head mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}

function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.mine_block_range_with_ench.target_block set from entity 1000-0-1000-0-100000001000 ArmorItems[3].id
