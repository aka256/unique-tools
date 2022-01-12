#> uniquetools:expand_shovel/tick
#
# playerがexpand_shovelを持っているときに実行
#
# @context expand_shovelを持つプレイヤー
#
# @within uniquetools:tick

# expand pickのタイプ検知
  tag @s[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_shovel_mark1"]}}}] add uniquetools.has.expand_shovel_mark1
  tag @s[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_shovel_mark2"]}}}] add uniquetools.has.expand_shovel_mark2

# expand pick使用検知&Tag付与
  scoreboard players operation @s uniquetools.use.delta.diamond_shovel -= @s uniquetools.use.diamond_shovel
  tag @s[tag=uniquetools.has.expand_shovel_mark1] add uniquetools.use.expand_shovel_mark1
  tag @s[scores={uniquetools.use.delta.diamond_shovel=0}] remove uniquetools.use.expand_shovel_mark1
  scoreboard players operation @s uniquetools.use.delta.diamond_shovel = @s uniquetools.use.diamond_shovel

  scoreboard players operation @s uniquetools.use.delta.netherite_shovel -= @s uniquetools.use.netherite_shovel
  tag @s[tag=uniquetools.has.expand_shovel_mark2] add uniquetools.use.expand_shovel_mark2
  tag @s[scores={uniquetools.use.delta.netherite_shovel=0}] remove uniquetools.use.expand_shovel_mark2
  scoreboard players operation @s uniquetools.use.delta.netherite_shovel = @s uniquetools.use.netherite_shovel

  tag @s[tag=uniquetools.use.expand_shovel_mark1] add uniquetools.use.expand_shovel
  tag @s[tag=uniquetools.use.expand_shovel_mark2] add uniquetools.use.expand_shovel

# function実行
  function #oh_my_dat:please
  execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core{get_target_block:{success:true}} as @s[tag=uniquetools.use.expand_shovel] run function uniquetools:expand_shovel/use
  execute as @s[tag=uniquetools.sneaked_twice] run function uniquetools:expand_shovel/setting/main

# tagの削除
  tag @a remove uniquetools.has.expand_shovel_mark1
  tag @a remove uniquetools.has.expand_shovel_mark2
  tag @a remove uniquetools.use.expand_shovel
  tag @a remove uniquetools.use.expand_shovel_mark1
  tag @a remove uniquetools.use.expand_shovel_mark2

# 一時エンティティを削除
  kill @e[tag=uniquetools.temp.tick]

# target_entityの設置
  data modify storage uniquetools.__temp__:core/get_target_block __input__ merge value {tool_type:"shovel"} 
  execute as @s at @s run function uniquetools:core/get_target_block/main
  function #oh_my_dat:please
  execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core{get_target_block:{success:true}} as @e[tag=uniquetools.core.get_target_block.center] run function uniquetools:core/mine_block_range_with_ench/clone