#> uniquetools:expand_tools/axe/setting/mark1
#
# @within uniquetools:expand_tools/axe/setting/main

# サイズ変更
  scoreboard players add @s uniquetools.config.expand_axe_mark1.size 2
  execute if score @s uniquetools.config.expand_axe_mark1.size matches 4.. run scoreboard players set @s uniquetools.config.expand_axe_mark1.size 1

# 通知
  execute unless score @s uniquetools.config.expand_axe_mark1.size matches 1 unless score @s uniquetools.config.expand_axe_mark1.size matches 3 run function uniquetools:expand_tools/axe/setting/error_correction
  execute if score @s uniquetools.config.expand_axe_mark1.size matches 1 run tellraw @s [{"text": "[Expand Axe Mark1]","color": "aqua","bold": false},{"text": " ","color": "white","bold": false},{"text": "disable","color": "red","bold": true}]
  execute if score @s uniquetools.config.expand_axe_mark1.size matches 3 run tellraw @s [{"text": "[Expand Axe Mark1]","color": "aqua","bold": false},{"text": " ","color": "white","bold": false},{"text": "3x3","color": "green","bold": true}]
