#> uniquetools:recipe/expand_axe_mark2
#
# advancement uniquetools:craft_expand_axe_mark2により実行される

# mark2を渡す
  clear @s knowledge_book
  execute as @s run function uniquetools:expand_axe/give_expand_axe_mark2
  advancement revoke @s only uniquetools:craft_expand_axe_mark2
  recipe take @s uniquetools:expand_axe_mark2