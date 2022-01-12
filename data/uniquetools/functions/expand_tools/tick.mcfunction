#> uniquetools:expand_tools/tick
#
# @context expand系toolを持つプレイヤー
#
# @within uniquetools:tick

# toolによる分岐
  execute as @s[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_tools.pickaxe"]}}}] run function uniquetools:expand_tools/pickaxe/tick
  execute as @s[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_tools.shovel"]}}}] run function uniquetools:expand_tools/shovel/tick
  execute as @s[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_tools.axe"]}}}] run function uniquetools:expand_tools/axe/tick

# 
  function uniquetools:core/get_target_block/delete
  function uniquetools:core/get_target_block/main
  function uniquetools:core/mine_block_range_with_ench/clone