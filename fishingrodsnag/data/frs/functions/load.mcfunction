## unload data pack assets
execute as @e[x=29999968.0, dx=0, y=-64.5, dy=0, z=0.0, dz=0, type=marker, tag=frs.forceload] at @s run function frs:unload 

## load data pack assets
# load scoreboards and data
scoreboard objectives add frs.global dummy {"text":"frs.global", "color":"yellow"}
scoreboard objectives add frs.uuid0 dummy {"text":"frs.uuid0", "color":"yellow"}
scoreboard objectives add frs.uuid1 dummy {"text":"frs.uuid1", "color":"yellow"}
scoreboard objectives add frs.uuid2 dummy {"text":"frs.uuid2", "color":"yellow"}
scoreboard objectives add frs.uuid3 dummy {"text":"frs.uuid3", "color":"yellow"}
data merge storage frs:data {temp:{bobber:[I;0, 0, 0, 0]}}

# chunk just before default world border in +x direction
forceload add 29999968 0
summon marker 29999968 -64 0 {Tags:["frs.forceload", "global.forceload", "global.ignore", "global.ignore.kill"], CustomName:'{"text":"frs.forceload", "color":"yellow"}'}
fill 29999971 -64 0 29999975 -60 5 minecraft:bedrock replace
setblock 29999973 -62 2 minecraft:chest
setblock 29999973 -62 3 minecraft:yellow_shulker_box
item replace block 29999973 -62 3 container.0 with stone