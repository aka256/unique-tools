#> uniquetools:expand_tools/shovel/setting/main
#
# @within uniquetools:expand_tools/shovel/tick

# タイプ分け
  execute as @a[tag=uniquetools.has.expand_shovel_mark1] run function uniquetools:expand_tools/shovel/setting/mark1
  execute as @a[tag=uniquetools.has.expand_shovel_mark2] run function uniquetools:expand_tools/shovel/setting/mark2

# タグの削除
  tag @s remove uniquetools.sneaked_twice