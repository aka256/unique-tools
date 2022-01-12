#> uniquetools:init
#
# playerごとの初期化用function
#
# @context uniquetools.initializedを持っていないプレイヤー
#
# @within uniquetools:tick

# expand_pickaxe
  scoreboard players set @s uniquetools.config.expand_pickaxe_mark1.size 1
  scoreboard players set @s uniquetools.config.expand_pickaxe_mark2.size 1

# expand_shovel
  scoreboard players set @s uniquetools.config.expand_shovel_mark1.size 1
  scoreboard players set @s uniquetools.config.expand_shovel_mark2.size 1

# expand_axe
  scoreboard players set @s uniquetools.config.expand_axe_mark1.size 1
  scoreboard players set @s uniquetools.config.expand_axe_mark2.size 1

# core/manage_sneak
  tag @s add uniquetools.core.manage_sneak.pushed_twice
  scoreboard players operation @s uniquetools.delta_sneak_time = @s uniquetools.sneak_time

# プレイヤー固有id
  execute store result score @s uniquetools.id run data get storage uniquetools:config latest_id
  execute store result storage uniquetools:config latest_id int 1.0000000009313226 run data get storage uniquetools:config latest_id 1.0

# タグの付与
  tag @s add uniquetools.initialized
