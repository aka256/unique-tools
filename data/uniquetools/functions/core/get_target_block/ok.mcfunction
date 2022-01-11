#> uniquetools:core/get_target_block/ok
#
# @context uniquetools.core.get_target_block.detect
#
# @within uniquetools:core/get_target_block/rec_*

# カウンターを再帰から抜けるよう設定
  scoreboard players operation $t0 uniquetools.temp = TARGET_RANGE_LIMIT uniquetools.const
  scoreboard players add $t0 uniquetools.temp 1

# ターゲットブロックの中心とその面を指すエンティティを設置
  execute positioned ^ ^ ^-0.05 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["uniquetools.target_surface_entity", "uniquetools.temp.tick", "uniquetools.not_has_id_entity"]}
  execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["uniquetools.target_center_entity", "uniquetools.temp.tick", "uniquetools.not_has_id_entity"]}

# 返り値を設定
  scoreboard players set $t1 uniquetools.temp 1
