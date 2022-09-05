## unload data pack assets
# unload scoreboards and data
scoreboard objectives remove frs.global
scoreboard objectives remove frs.uuid0
scoreboard objectives remove frs.uuid1
scoreboard objectives remove frs.uuid2
scoreboard objectives remove frs.uuid3
data remove storage frs:data temp

# if no other forceload entities exist in chunk, remove forceload
tag @s remove global.forceload
execute align xyz unless entity @e[dx=15, dy=319, dz=15, tag=global.forceload] run forceload remove ~ ~
execute if entity @s[type=marker] run kill @s