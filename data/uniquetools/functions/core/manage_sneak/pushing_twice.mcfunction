#> uniquetools:core/manage_sneak/pushing_twice
#
# @within uniquetools:core/manage_sneak/tick

# スニークをしているか否かでタグの付け替えを行う
  tag @s remove uniquetools.setting
  tag @s[scores={uniquetools.delta_sneak_time=0}] add uniquetools.sneak_pushed_twice
  tag @s[tag=uniquetools.sneak_pushed_twice] remove uniquetools.sneak_pushing_twice

  tag @s add uniquetools.sneak_processed