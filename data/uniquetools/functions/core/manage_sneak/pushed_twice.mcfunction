#> uniquetools:core/manage_sneak/pushed_twice
#
# @within uniquetools:core/manage_sneak/tick

# スニークをしているか否かでタグの付け替えを行う
  tag @s add uniquetools.sneak_pushing_once
  tag @s[scores={uniquetools.delta_sneak_time=0}] remove uniquetools.sneak_pushing_once
  tag @s[tag=uniquetools.sneak_pushing_once] remove uniquetools.sneak_pushed_twice

  tag @s add uniquetools.sneak_processed