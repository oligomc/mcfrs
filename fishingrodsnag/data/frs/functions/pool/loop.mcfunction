## iterate
data remove storage frs:data temp.inv[0]
scoreboard players remove $rand frs.global 1
execute unless score $rand frs.global matches 0 run function frs:pool/loop