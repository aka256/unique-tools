#> uniquetools:core/get_target_block/ok
#
# @context uniquetools.core.get_target_block.detect
#
# @within uniquetools:core/get_target_block/rec_*

# カウンターを再帰から抜けるよう設定
  scoreboard players operation $t0 uniquetools.temp = TARGET_RANGE_LIMIT uniquetools.const
  scoreboard players add $t0 uniquetools.temp 1

# ターゲットブロックの中心とその面を指すエンティティを設置
  execute positioned ^ ^ ^-0.05 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["uniquetools.core.get_target_block.surface", "uniquetools.core.get_target_block.not_has_id"], PortalCooldown:1}
  execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["uniquetools.core.get_target_block.center", "uniquetools.core.get_target_block.not_has_id"], PortalCooldown:1}

# 返り値を設定
  scoreboard players set $t1 uniquetools.temp 1
