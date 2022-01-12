#> uniquetools:core/manage_sneak/pushing_twice
#
# @within uniquetools:core/manage_sneak/tick

# スニークをしているか否かでタグの付け替えを行う
  tag @s remove uniquetools.setting
  tag @s[scores={uniquetools.delta_sneak_time=0}] add uniquetools.core.manage_sneak.pushed_twice
  tag @s[tag=uniquetools.core.manage_sneak.pushed_twice] remove uniquetools.core.manage_sneak.pushing_twice

  tag @s add uniquetools.sneak_processed