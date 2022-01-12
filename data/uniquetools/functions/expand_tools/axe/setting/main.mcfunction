#> uniquetools:expand_tools/axe/setting/main
#
# @within uniquetools:expand_tools/axe/tick

# タイプ分け
  execute as @s[tag=uniquetools.has.expand_axe_mark1] run function uniquetools:expand_tools/axe/setting/mark1
  execute as @s[tag=uniquetools.has.expand_axe_mark2] run function uniquetools:expand_tools/axe/setting/mark2

# タグの削除
  tag @s remove uniquetools.sneaked_twice