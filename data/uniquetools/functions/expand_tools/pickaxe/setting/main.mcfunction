#> uniquetools:expand_tools/pickaxe/setting/main
#
# @within uniquetools:expand_tools/pickaxe/tick

# タイプ分け
  execute as @s[tag=uniquetools.has.expand_pickaxe_mark1] run function uniquetools:expand_tools/pickaxe/setting/mark1
  execute as @s[tag=uniquetools.has.expand_pickaxe_mark2] run function uniquetools:expand_tools/pickaxe/setting/mark2

# タグの削除
  tag @s remove uniquetools.sneaked_twice