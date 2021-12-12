#> uniquetools:expand_pickaxe/setting/main
#
# @within uniquetools:expand_pickaxe/tick

# タイプ分け
  execute as @a[tag=uniquetools.has.expand_pickaxe_mark1] run function uniquetools:expand_pickaxe/setting/mark1
  execute as @a[tag=uniquetools.has.expand_pickaxe_mark2] run function uniquetools:expand_pickaxe/setting/mark2

# タグの削除
  tag @s remove uniquetools.sneaked_twice