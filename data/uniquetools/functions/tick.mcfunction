#> uniquetools:tick
#
# @handles #minecraft:tick

#
  execute as @a[tag=!uniquetools.initialized] run function uniquetools:init

# sneak検知&Tag付与
  function uniquetools:core/manage_sneak/tick

# expand系toolを持っているplayerを対象としてfunctionを実行
  execute as @a[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_pickaxe"]}}}] run function uniquetools:expand_pickaxe/tick
  execute as @a[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_shovel"]}}}] run function uniquetools:expand_shovel/tick
  execute as @a[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_axe"]}}}] run function uniquetools:expand_axe/tick
