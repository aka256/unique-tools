#> uniquetools:expand_pickaxe/setting/mark2
#
# @within uniquetools:expand_pickaxe/setting/main

# サイズ変更
  scoreboard players add @s uniquetools.config.expand_pickaxe_mark2.size 2
  execute if score @s uniquetools.config.expand_pickaxe_mark2.size matches 6.. run scoreboard players set @s uniquetools.config.expand_pickaxe_mark2.size 1

# 通知
  execute unless score @s uniquetools.config.expand_pickaxe_mark2.size matches 1 unless score @s uniquetools.config.expand_pickaxe_mark2.size matches 3 unless score @s uniquetools.config.expand_pickaxe_mark2.size matches 5 run function uniquetools:expand_pickaxe/setting/error_correction
  execute if score @s uniquetools.config.expand_pickaxe_mark2.size matches 1 run tellraw @s [{"text": "[Expand Pickaxe Mark2]","color": "aqua","bold": false},{"text": " ","color": "white","bold": false},{"text": "disable","color": "red","bold": true}]
  execute if score @s uniquetools.config.expand_pickaxe_mark2.size matches 3 run tellraw @s [{"text": "[Expand Pickaxe Mark2]","color": "aqua","bold": false},{"text": " ","color": "white","bold": false},{"text": "3x3","color": "green","bold": true}]
  execute if score @s uniquetools.config.expand_pickaxe_mark2.size matches 5 run tellraw @s [{"text": "[Expand Pickaxe Mark2]","color": "aqua","bold": false},{"text": " ","color": "white","bold": false},{"text": "5x5","color": "green","bold": true}]