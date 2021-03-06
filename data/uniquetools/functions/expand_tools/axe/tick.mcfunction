#> uniquetools:expand_tools/axe/tick
#
# playerがexpand_axeを持っているときに実行
#
# @context expand_axeを持つプレイヤー
#
# @within uniquetools:tick

# expand pickのタイプ検知
  tag @s[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_tools.axe_mark1"]}}}] add uniquetools.has.expand_axe_mark1
  tag @s[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_tools.axe_mark2"]}}}] add uniquetools.has.expand_axe_mark2

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
  function #oh_my_dat:please
  execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core{get_target_block:{success:true}} as @s[tag=uniquetools.use.expand_axe] run function uniquetools:expand_tools/axe/use
  execute as @s[tag=uniquetools.sneaked_twice] run function uniquetools:expand_tools/axe/setting/main

# tagの削除
  tag @s remove uniquetools.has.expand_axe_mark1
  tag @s remove uniquetools.has.expand_axe_mark2
  tag @s remove uniquetools.use.expand_axe
  tag @s remove uniquetools.use.expand_axe_mark1
  tag @s remove uniquetools.use.expand_axe_mark2

# target_entityの設置
  data modify storage uniquetools.__temp__:core/get_target_block __input__ merge value {tool_type:"axe"} 
