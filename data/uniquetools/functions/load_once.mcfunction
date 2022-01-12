#> uniquetools:load_once
#
# @within uniquetools:tick

# 定数
  scoreboard objectives add uniquetools.const dummy

  # core/get_target_block
    scoreboard players set TARGET_RANGE_LIMIT uniquetools.const 101

# 一時変数
  scoreboard objectives add uniquetools.temp dummy
  scoreboard players set $t0 uniquetools.temp 0
  scoreboard players set $t1 uniquetools.temp 0
  scoreboard players set $t2 uniquetools.temp 0
  scoreboard players set $t3 uniquetools.temp 0
  scoreboard players set $t4 uniquetools.temp 0
  scoreboard players set $t5 uniquetools.temp 0
  scoreboard players set $t6 uniquetools.temp 0
  scoreboard players set $t7 uniquetools.temp 0

# loot replace用armor_stand
  summon armor_stand 0 -70 0 {Tags:["uniquetools.entity"], NoGravity:true, Invisible:true, UUID:[I;4096, 4096, 4096, 4096], Marker:true}
  forceload add 0 0
  #alias uuid 4096-4096-4096-4096 1000-0-1000-0-100000001000

# player固有id
# 範囲は1073741760 ~ 2147483520の1,073,741,760個
# https://twitter.com/intsuc/status/1429779664856178694
  scoreboard objectives add uniquetools.id dummy
  data modify storage uniquetools:config latest_id set value 1073741760

# expand_pickaxe
  scoreboard objectives add uniquetools.use.diamond_pickaxe used:diamond_pickaxe
  scoreboard objectives add uniquetools.use.delta.diamond_pickaxe dummy
  scoreboard objectives add uniquetools.use.netherite_pickaxe used:netherite_pickaxe
  scoreboard objectives add uniquetools.use.delta.netherite_pickaxe dummy
  
  scoreboard objectives add uniquetools.config.expand_pickaxe_mark1.size dummy
  scoreboard objectives add uniquetools.config.expand_pickaxe_mark2.size dummy

# expand_shovel
  scoreboard objectives add uniquetools.use.diamond_shovel used:diamond_shovel
  scoreboard objectives add uniquetools.use.delta.diamond_shovel dummy
  scoreboard objectives add uniquetools.use.netherite_shovel used:netherite_shovel
  scoreboard objectives add uniquetools.use.delta.netherite_shovel dummy
  
  scoreboard objectives add uniquetools.config.expand_shovel_mark1.size dummy
  scoreboard objectives add uniquetools.config.expand_shovel_mark2.size dummy

# expand_axe
  scoreboard objectives add uniquetools.use.diamond_axe used:diamond_axe
  scoreboard objectives add uniquetools.use.delta.diamond_axe dummy
  scoreboard objectives add uniquetools.use.netherite_axe used:netherite_axe
  scoreboard objectives add uniquetools.use.delta.netherite_axe dummy
  
  scoreboard objectives add uniquetools.config.expand_axe_mark1.size dummy
  scoreboard objectives add uniquetools.config.expand_axe_mark2.size dummy

# core/manage_sneak
  scoreboard objectives add uniquetools.sneak_time custom:sneak_time
  scoreboard objectives add uniquetools.delta_sneak_time dummy
  scoreboard objectives add uniquetools.not_sneak_time dummy

# loaded flag
  data modify storage uniquetools:config load_once.loaded set value true
