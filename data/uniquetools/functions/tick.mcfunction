#> uniquetools:tick
#
# @handles #minecraft:tick

# sneak検知&Tag付与
  function uniquetools:core/manage_sneak/tick

# expand_pickaxeを持っているplayerを対象としてfunctionを実行
  execute as @a[nbt={SelectedItem:{tag:{Tags:["uniquetools.expand_pickaxe"]}}}] run function uniquetools:expand_pickaxe/tick
