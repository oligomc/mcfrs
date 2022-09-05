## find fishing_bobber linked to player
execute store result score $bobbers frs.global if entity @e[type=fishing_bobber, tag=frs.link]
execute if score $bobbers frs.global matches 1 at @e[type=fishing_bobber] as @e[type=#frs:snaggable, sort=nearest, limit=1] at @s run function frs:pool/main
execute if score $bobbers frs.global matches 2.. run function frs:link/search/main

## summon snagged item
data modify block 29999973 -62 3 Items[0] set from storage frs:data temp.inv[0]
loot spawn ~ ~ ~ mine 29999973 -62 3 air{drop_contents:true}

## reset advancement
advancement revoke @s only frs:snag