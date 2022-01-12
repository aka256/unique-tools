#> uniquetools:core/get_target_block/main
#
# 実行者の視線上のブロックにmarkerを設置する
# - uniquetools.core.get_target_block.center: ターゲットブロックの中心
# - uniquetools.core.get_target_block.surface: ターゲットブロックの表面
#
# @context ターゲッティングしているブロックを取得したいプレイヤー
# @input
#   storage uniquetools.__temp__:core/get_target_block __input__
#     tool_type : string
#       pickaxe, axe, shovel
# @output
#   storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.get_target_block
#     success : byte
#       uniquetools.core.get_target_block.centerおよびuniquetools.core.get_target_block.surfaceの設置が成功したかどうか
#
# @internal

# armor_standの召喚と位置修正
  execute at @s run summon armor_stand ~ ~ ~ {Tags:["uniquetools.core.get_target_block.detect"], NoGravity:true, Small:false, Invisible:true, Marker:true}
  execute at @s anchored eyes run tp @e[distance=..5,tag=uniquetools.core.get_target_block.detect] ^ ^ ^ ~ ~

# カウント用スコアの初期化
  scoreboard players set $t0 uniquetools.temp 0
  scoreboard players set $t1 uniquetools.temp 0

# 再帰処理の実行
  execute if data storage uniquetools.__temp__:core/get_target_block {__input__:{tool_type:"pickaxe"}} at @s as @e[distance=..5,tag=uniquetools.core.get_target_block.detect] run function uniquetools:core/get_target_block/rec_pickaxe
  execute if data storage uniquetools.__temp__:core/get_target_block {__input__:{tool_type:"axe"}} at @s as @e[distance=..5,tag=uniquetools.core.get_target_block.detect] run function uniquetools:core/get_target_block/rec_axe
  execute if data storage uniquetools.__temp__:core/get_target_block {__input__:{tool_type:"shovel"}} at @s as @e[distance=..5,tag=uniquetools.core.get_target_block.detect] run function uniquetools:core/get_target_block/rec_shovel

# armor_standの削除
  kill @e[tag=uniquetools.core.get_target_block.detect]

# idの付与
  execute at @s run scoreboard players operation @e[distance=..10,tag=uniquetools.core.get_target_block.center,tag=uniquetools.core.get_target_block.not_has_id] uniquetools.id = @s uniquetools.id
  execute at @s run scoreboard players operation @e[distance=..10,tag=uniquetools.core.get_target_block.surface,tag=uniquetools.core.get_target_block.not_has_id] uniquetools.id = @s uniquetools.id
  tag @e remove uniqeutools.not_has_id_entity

# 返り値の保存
  function #oh_my_dat:please
  execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.get_target_block.success byte 1 run scoreboard players get $t1 uniquetools.temp