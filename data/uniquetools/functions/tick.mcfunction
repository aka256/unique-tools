#> uniquetools:tick
#
# @handles #minecraft:tick

# load once
  execute unless data storage uniquetools:config {load_once:{loaded:true}} run function uniquetools:load_once

# initialize
  execute as @a[tag=!uniquetools.initialized] run function uniquetools:init

# sneak検知&Tag付与
  function uniquetools:core/manage_sneak/tick

# expand系toolを持っているplayerを対象としてfunctionを実行
  execute as @a[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_tool"]}}}] run function uniquetools:expand_tools/tick

#
  function uniquetools:core/get_target_block/tick
