#> uniquetools:recipe/expand_shovel_mark1
#
# advancement uniquetools:craft_expand_shovel_mark1により実行される

# mark1を渡す
  clear @s knowledge_book
  execute as @s run function uniquetools:expand_shovel/give_expand_shovel_mark1
  advancement revoke @s only uniquetools:craft_expand_shovel_mark1
  recipe take @s uniquetools:expand_shovel_mark1