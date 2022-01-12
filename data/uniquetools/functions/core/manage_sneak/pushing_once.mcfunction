#> uniquetools:core/manage_sneak/pushing_once
#
# @within uniquetools:core/manage_sneak/tick

# スニークをしているか否かでタグの付け替えを行う
  tag @s[scores={uniquetools.delta_sneak_time=0}] add uniquetools.core.manage_sneak.pushed_once
  scoreboard players set @s[tag=uniquetools.core.manage_sneak.pushed_once] uniquetools.not_sneak_time 0
  tag @s[tag=uniquetools.core.manage_sneak.pushed_once] remove uniquetools.core.manage_sneak.pushing_once

  tag @s add uniquetools.sneak_processed