## generate random number
execute store result score $rand frs.global run data get entity @s UUID[0]
kill @s
scoreboard players remove $len frs.global 1
scoreboard players operation $rand frs.global %= $len frs.global
execute if score $rand frs.global matches 1.. run function frs:pool/loop