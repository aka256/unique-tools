#> uniquetools:core/mine_block_range_with_ench/_index
# @private

#>
# loot replace...によるitemを一時的に保持するentity
# @within uniquetools:core/mine_block_range_with_ench/**
#declare tag uniquetools.core.mine_block_range_with_ench.loot_stored_entity

#>
# 破壊するブロック群の目印となるentity
# entityの視線と垂直でentityを通る面を破壊する
# @within uniquetools:core/mine_block_range_with_ench/**
#declare tag uniquetools.core.mine_block_range_with_ench.target_entity

#>
# core/get_target_blockの一時ストレージ
# @internal
#declare storage uniquetools.__temp__:core/mine_block_range_with_ench