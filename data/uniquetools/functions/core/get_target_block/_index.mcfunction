#> uniquetools:core/get_target_block/_index
# @private

#>
# uniquetools.core.get_target_block.detectの進んだ数
# @within uniquetools:core/get_target_block/**
#declare score_holder $t0

#>
# 返り値用の一時変数
# @within uniquetools:core/get_target_block/**
#declare score_holder $t1

#>
# ターゲットブロックを検知するためのエンティティのTag
# @within uniquetools:core/get_target_block/**
#declare tag uniquetools.core.get_target_block.detect

#>
# ターゲットブロックの中心を指すエンティティ
# @within uniquetools:core/**
#declare tag uniquetools.core.get_target_block.center

#>
# ターゲットブロックの表面を指すエンティティ
# @within uniquetools:core/**
#declare tag uniquetools.core.get_target_block.surface

#>
# idを持っていないuniquetools.core.get_target_block.centerもしくはuniquetools.core.get_target_block.surfaceを持つエンティティ
# @within uniquetools:core/get_target_block/**
#declare tag uniquetools.core.get_target_block.not_has_id

#>
# core/get_target_blockの一時ストレージ
# @internal
#declare storage uniqeutools.__temp__:core/get_target_block
