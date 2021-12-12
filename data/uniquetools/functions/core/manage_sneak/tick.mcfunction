#> uniquetools:core/manage_sneak/tick
#
# スニークを短時間に2回押したことを検知する
# 2回スニークしたプレイヤーにはuniquetools.sneaked_twiceを付与
#
# @within uniquetools:tick

# 今プレイヤーがスニークしているかをuniquetools.delta_sneak_timeで検知
  scoreboard players operation @a uniquetools.delta_sneak_time -= @a uniquetools.sneak_time

# 現在のスニークの状態に応じて分岐
  execute as @a[tag=uniquetools.sneak_pushed_once,tag=!uniquetools.sneak_processed] run function uniquetools:core/manage_sneak/pushed_once
  execute as @a[tag=uniquetools.sneak_pushing_once,tag=!uniquetools.sneak_processed] run function uniquetools:core/manage_sneak/pushing_once
  execute as @a[tag=uniquetools.sneak_pushed_twice,tag=!uniquetools.sneak_processed] run function uniquetools:core/manage_sneak/pushed_twice
  execute as @a[tag=uniquetools.sneak_pushing_twice,tag=!uniquetools.sneak_processed] run function uniquetools:core/manage_sneak/pushing_twice
  tag @a remove uniquetools.sneak_processed

# 現在のsneak_timeを保存
  scoreboard players operation @a uniquetools.delta_sneak_time = @a uniquetools.sneak_time