#> uniquetools:core/get_target_block/main
#
# 実行者の視線上のブロックにmarkerを設置する
# - uniquetools.target_center_entity: ターゲットブロックの中心
# - uniquetools.target_surface_entity: ターゲットブロックの表面
#
# @context ターゲッティングしているブロックを取得したいプレイヤー
# @input
#   storage uniquetools.__temp__:core/get_target_block __input__
#     tool_type : string
#       pickaxe, axe, shovel
# @output
#   storage uniquetools.__temp__:core/get_target_block __output__
#     success : byte
#       uniquetools.target_center_entityおよびuniquetools.target_surface_entityの設置が成功したかどうか
#
# @public

# armor_standの召喚と位置修正
  summon armor_stand ~ ~ ~ {Tags:["uniquetools.target_entity"], NoGravity:true, Small:true, Invisible:true}
  execute as @s run tp @e[tag=uniquetools.target_entity] ~ ~1.15 ~ ~ ~

# カウント用スコアの初期化
  scoreboard players set $t0 uniquetools.temp 0
  scoreboard players set $t1 uniquetools.temp 0

# 再帰処理の実行
  execute if data storage uniquetools.__temp__:core/get_target_block {__input__:{tool_type:"pickaxe"}} as @e[tag=uniquetools.target_entity] run function uniquetools:core/get_target_block/rec_pickaxe
  execute if data storage uniquetools.__temp__:core/get_target_block {__input__:{tool_type:"axe"}} as @e[tag=uniquetools.target_entity] run function uniquetools:core/get_target_block/rec_axe
  execute if data storage uniquetools.__temp__:core/get_target_block {__input__:{tool_type:"shovel"}} as @e[tag=uniquetools.target_entity] run function uniquetools:core/get_target_block/rec_shovel

# armor_standの削除
  kill @e[tag=uniquetools.target_entity]

# 返り値の保存
  execute store result storage uniquetools.__temp__:core/get_target_block __output__.success byte 1 run scoreboard players get $t1 uniquetools.temp