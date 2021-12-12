#> uniquetools:init
#
# 初期化用function
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
  tag @s add uniquetools.sneak_pushed_twice

# タグの付与
  tag @s add uniquetools.initialized