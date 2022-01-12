#> uniquetools:core/manage_sneak/pushed_twice
#
# @within uniquetools:core/manage_sneak/tick

# スニークをしているか否かでタグの付け替えを行う
  tag @s add uniquetools.core.manage_sneak.pushing_once
  tag @s[scores={uniquetools.delta_sneak_time=0}] remove uniquetools.core.manage_sneak.pushing_once
  tag @s[tag=uniquetools.core.manage_sneak.pushing_once] remove uniquetools.core.manage_sneak.pushed_twice

  tag @s add uniquetools.sneak_processed