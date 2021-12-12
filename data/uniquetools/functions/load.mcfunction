#> uniquetools:load
#
# @handles #minecraft:load

# 定数
  scoreboard objectives add uniquetools.const dummy
  scoreboard players set $0 uniquetools.const 0

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
  scoreboard players operation @a uniquetools.delta_sneak_time = @a uniquetools.sneak_time
  scoreboard objectives add uniquetools.not_sneak_time dummy

# core/mine_block_range
  forceload add 0 0
