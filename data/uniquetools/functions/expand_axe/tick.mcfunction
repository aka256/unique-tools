#> uniquetools:expand_axe/tick
#
# playerがexpand_axeを持っているときに実行
#
# @within uniquetools:tick

# expand pickのタイプ検知
  tag @s[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_axe_mark1"]}}}] add uniquetools.has.expand_axe_mark1
  tag @s[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_axe_mark2"]}}}] add uniquetools.has.expand_axe_mark2

# expand pick使用検知&Tag付与
  scoreboard players operation @s uniquetools.use.delta.diamond_axe -= @s uniquetools.use.diamond_axe
  tag @s[tag=uniquetools.has.expand_axe_mark1] add uniquetools.use.expand_axe_mark1
  tag @s[scores={uniquetools.use.delta.diamond_axe=0}] remove uniquetools.use.expand_axe_mark1
  scoreboard players operation @s uniquetools.use.delta.diamond_axe = @s uniquetools.use.diamond_axe

  scoreboard players operation @s uniquetools.use.delta.netherite_axe -= @s uniquetools.use.netherite_axe
  tag @s[tag=uniquetools.has.expand_axe_mark2] add uniquetools.use.expand_axe_mark2
  tag @s[scores={uniquetools.use.delta.netherite_axe=0}] remove uniquetools.use.expand_axe_mark2
  scoreboard players operation @s uniquetools.use.delta.netherite_axe = @s uniquetools.use.netherite_axe

  tag @s[tag=uniquetools.use.expand_axe_mark1] add uniquetools.use.expand_axe
  tag @s[tag=uniquetools.use.expand_axe_mark2] add uniquetools.use.expand_axe

# function実行
  execute if data storage uniquetools.__temp__:core/get_target_block {__output__:{success:1b}} as @s[tag=uniquetools.use.expand_axe] run function uniquetools:expand_axe/use
  execute as @s[tag=uniquetools.sneaked_twice] run function uniquetools:expand_axe/setting/main

# tagの削除
  tag @a remove uniquetools.has.expand_axe_mark1
  tag @a remove uniquetools.has.expand_axe_mark2
  tag @a remove uniquetools.use.expand_axe
  tag @a remove uniquetools.use.expand_axe_mark1
  tag @a remove uniquetools.use.expand_axe_mark2

# 一時エンティティを削除
  kill @e[tag=uniquetools.temp.tick]

# target_entityの設置
  data modify storage uniquetools.__temp__:core/get_target_block __input__ merge value {tool_type:"axe"} 
  execute as @s at @s run function uniquetools:core/get_target_block/main
  execute if data storage uniquetools.__temp__:core/get_target_block {__output__:{success:1b}} as @e[tag=uniquetools.target_center_entity] run function uniquetools:core/mine_block_range_with_ench/clone