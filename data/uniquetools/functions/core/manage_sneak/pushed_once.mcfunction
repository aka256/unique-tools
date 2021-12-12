#> uniquetools:core/manage_sneak/pushed_once
#
# @within uniquetools:core/manage_sneak/tick

# スニークをしているか否かでタグの付け替えを行う
  tag @s add uniquetools.sneak_pushing_twice
  tag @s[scores={uniquetools.delta_sneak_time=0}] remove uniquetools.sneak_pushing_twice
  tag @s[tag=uniquetools.sneak_pushing_twice] remove uniquetools.sneak_pushed_once

# インクリメント
  scoreboard players add @s uniquetools.not_sneak_time 1

# 0.1~1.0秒の間に再びスニークされればuniquetools.sneaked_twiceを付与
  tag @s[tag=uniquetools.sneak_pushing_twice,scores={uniquetools.not_sneak_time=2..20}] add uniquetools.sneaked_twice
  tag @s[scores={uniquetools.not_sneak_time=21..}] add uniquetools.sneak_pushed_twice
  tag @s[scores={uniquetools.not_sneak_time=21..}] remove uniquetools.sneak_pushed_once

  tag @s add uniquetools.sneak_processed