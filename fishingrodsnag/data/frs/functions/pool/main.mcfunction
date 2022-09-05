## populate item pool from HandItems and ArmorItems
# cannot merge HandItems and ArmorItems into block Items because of missing Slot numbers
item replace block 29999973 -62 2 container.0 from entity @s weapon.mainhand
item replace block 29999973 -62 2 container.1 from entity @s weapon.offhand
item replace block 29999973 -62 2 container.2 from entity @s armor.head
item replace block 29999973 -62 2 container.3 from entity @s armor.chest
item replace block 29999973 -62 2 container.4 from entity @s armor.legs
item replace block 29999973 -62 2 container.5 from entity @s armor.feet
data modify storage frs:data temp.inv set from block 29999973 -62 2 Items
data remove storage frs:data temp.inv[{tag:{Enchantments:[{id:"minecraft:binding_curse"}]}}]
execute store result score $len frs.global run data get storage frs:data temp.inv

## randomly select item to strip
execute if score $len frs.global matches 2.. run function frs:pool/nest

## strip item from entity
function frs:snag/strip