#> uniquetools:core/manage_sneak/pushing_once
#
# @within uniquetools:core/manage_sneak/tick

# スニークをしているか否かでタグの付け替えを行う
  tag @s[scores={uniquetools.delta_sneak_time=0}] add uniquetools.sneak_pushed_once
  scoreboard players set @s[tag=uniquetools.sneak_pushed_once] uniquetools.not_sneak_time 0
  tag @s[tag=uniquetools.sneak_pushed_once] remove uniquetools.sneak_pushing_once

  tag @s add uniquetools.sneak_processed