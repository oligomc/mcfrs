data modify storage frs:data temp.owner set from entity @p UUID
execute store result score @s frs.uuid0 run data get storage frs:data temp.owner[0]
execute store result score @s frs.uuid1 run data get storage frs:data temp.owner[1]
execute store result score @s frs.uuid2 run data get storage frs:data temp.owner[2]
execute store result score @s frs.uuid3 run data get storage frs:data temp.owner[3]
tag @s add frs.link