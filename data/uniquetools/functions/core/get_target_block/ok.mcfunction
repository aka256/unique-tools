#> uniquetools:core/get_target_block/ok
#
# @within uniquetools:core/get_target_block/**

# カウンターを再帰から抜けるよう設定
  scoreboard players operation $t0 uniquetools.temp = TARGET_RANGE_LIMIT uniquetools.const
  scoreboard players add $t0 uniquetools.temp 1

# ターゲットブロックの中心とその面を指すエンティティを設置
  execute at @s positioned ^ ^ ^-0.05 run summon marker ~ ~0.5 ~ {Tags:["uniquetools.target_surface_entity", "uniquetools.temp.tick"]}
  execute at @s run summon marker ~ ~0.5 ~ {Tags:["uniquetools.target_center_entity", "uniquetools.temp.tick"]}

# 返り値を設定
  scoreboard players set $t1 uniquetools.temp 1