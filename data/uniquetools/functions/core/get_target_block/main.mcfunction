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
  execute at @s run summon armor_stand ~ ~ ~ {Tags:["uniquetools.core.get_target_block.detect"], NoGravity:true, Small:false, Invisible:true}
  execute anchored eyes run tp @e[distance=..5,tag=uniquetools.core.get_target_block.detect] ^ ^ ^ ~ ~

# カウント用スコアの初期化
  scoreboard players set $t0 uniquetools.temp 0
  scoreboard players set $t1 uniquetools.temp 0

# 再帰処理の実行
  execute if data storage uniquetools.__temp__:core/get_target_block {__input__:{tool_type:"pickaxe"}} as @e[distance=..5,tag=uniquetools.core.get_target_block.detect] run function uniquetools:core/get_target_block/rec_pickaxe
  execute if data storage uniquetools.__temp__:core/get_target_block {__input__:{tool_type:"axe"}} as @e[distance=..5,tag=uniquetools.core.get_target_block.detect] run function uniquetools:core/get_target_block/rec_axe
  execute if data storage uniquetools.__temp__:core/get_target_block {__input__:{tool_type:"shovel"}} as @e[distance=..5,tag=uniquetools.core.get_target_block.detect] run function uniquetools:core/get_target_block/rec_shovel

# armor_standの削除
  kill @e[tag=uniquetools.core.get_target_block.detect]

# idの付与
  scoreboard players operation @e[distance=..10,tag=uniquetools.target_center_entity,tag=uniquetools.not_has_id_entity] uniquetools.id = @s uniquetools.id
  scoreboard players operation @e[distance=..10,tag=uniquetools.target_surface_entity,tag=uniquetools.not_has_id_entity] uniquetools.id = @s uniquetools.id
  tag @e remove uniqeutools.not_has_id_entity

# 返り値の保存
  function #oh_my_dat:please
  execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].uniquetools.core.get_target_block.success byte 1 run scoreboard players get $t1 uniquetools.temp