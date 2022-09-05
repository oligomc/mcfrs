## validate link by uuid
data modify storage frs:data temp.comp set from storage frs:data temp.owner
execute store result storage frs:data temp.bobber[0] int 1 run scoreboard players get @s frs.uuid0
execute store result storage frs:data temp.bobber[1] int 1 run scoreboard players get @s frs.uuid1
execute store result storage frs:data temp.bobber[2] int 1 run scoreboard players get @s frs.uuid2
execute store result storage frs:data temp.bobber[3] int 1 run scoreboard players get @s frs.uuid3
execute store success score $match frs.global run data modify storage frs:data temp.comp set from storage frs:data temp.bobber
execute if score $match frs.global matches 0 as @e[type=#frs:snaggable, sort=nearest, limit=1] at @s run function frs:pool/main