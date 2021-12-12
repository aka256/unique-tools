#> uniquetools:expand_axe/setting/main
#
# @within uniquetools:expand_axe/tick

# タイプ分け
  execute as @a[tag=uniquetools.has.expand_axe_mark1] run function uniquetools:expand_axe/setting/mark1
  execute as @a[tag=uniquetools.has.expand_axe_mark2] run function uniquetools:expand_axe/setting/mark2

# タグの削除
  tag @s remove uniquetools.sneaked_twice