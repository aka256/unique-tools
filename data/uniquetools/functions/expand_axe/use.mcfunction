#> uniquetools:expand_axe/use
#
# @within uniquetools:expand_axe/tick

# サイズを指定してmine_block_rangeを実行
  execute as @s[tag=uniquetools.use.expand_axe_mark1] store result storage uniquetools.__temp__:core/mine_block_range __input__.size int 1 run scoreboard players get @s uniquetools.config.expand_axe_mark1.size
  execute as @s[tag=uniquetools.use.expand_axe_mark2] store result storage uniquetools.__temp__:core/mine_block_range __input__.size int 1 run scoreboard players get @s uniquetools.config.expand_axe_mark2.size
  execute unless data storage uniquetools.__temp__:core/mine_block_range {__input__:{size:1}} run function uniquetools:core/mine_block_range/main
