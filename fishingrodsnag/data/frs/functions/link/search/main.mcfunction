## search fishing_bobbers
data modify storage frs:data temp.owner set from entity @s UUID
execute as @e[type=fishing_bobber, tag=frs.link] at @s run function frs:link/search/loop