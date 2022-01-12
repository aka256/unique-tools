#> uniquetools:expand_tools/axe/setting/error_correction
#
# @within uniquetools:expand_tools/axe/setting/**

#
  tellraw @s {"text": "There are some error.","color": "red","bold": true}

#
  scoreboard players set @s uniquetools.config.expand_axe_mark1.size 1
  scoreboard players set @s uniquetools.config.expand_axe_mark2.size 1

#
  tellraw @s {"text": "Config was reseted.","color": "blue"}