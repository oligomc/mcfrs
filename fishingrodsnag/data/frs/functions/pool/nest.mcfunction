## randomly choose item from pool
# this is not the fastest rng machine but it works and that's what matters
summon marker ~ ~ ~ {Tags:["frs.rng", "global.ignore", "global.ignore.kill"]}
execute as @e[distance=..0.1, type=marker, tag=frs.rng] run function frs:pool/rand