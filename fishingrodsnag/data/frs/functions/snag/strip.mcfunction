## strip item from entity
execute store result score $slot frs.global run data get storage frs:data temp.inv[0].Slot
execute unless score $slot frs.global matches 2.. run function frs:snag/bin/l0n0
execute if score $slot frs.global matches 2.. run function frs:snag/bin/l0n1