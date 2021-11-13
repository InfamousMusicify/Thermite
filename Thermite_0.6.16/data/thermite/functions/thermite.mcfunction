# thermite
# Magma Block Killer
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~ ~1 ~ ~ ~-1 ~ minecraft:basalt replace minecraft:magma_block
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~1 ~ ~ ~-1 ~ ~ minecraft:basalt replace minecraft:magma_block
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~ ~ ~1 ~ ~ ~-1 minecraft:basalt replace minecraft:magma_block
# Lava Cool
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:basalt replace minecraft:obsidian
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:magma_block replace minecraft:obsidian
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:magma_block replace minecraft:obsidian
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:magma_block replace minecraft:obsidian
# water/ice
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:air replace #minecraft:thermlog
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:air replace #minecraft:thermlog
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:air replace #minecraft:thermlog
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-2 ~-5 ~-2 ~2 ~4 ~2 minecraft:air replace minecraft:ice
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-3 ~-4 ~-3 ~3 ~3 ~3 minecraft:air replace minecraft:ice
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-4 ~-3 ~-4 ~4 ~2 ~4 minecraft:air replace minecraft:ice
# Effect Players closeby
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run effect give @e[distance=..2] slowness 65 1 true
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run effect give @e[distance=..2] minecraft:weakness 95 1 true
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run effect give @e[distance=..2] minecraft:nausea 45 1 true
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run effect give @e[distance=..2] minecraft:mining_fatigue 35 1 true
#
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run effect give @e[distance=..2.35] instant_damage 1 1 true
#
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run effect give @e[distance=..3.35] slowness 25 0 true
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run effect give @e[distance=..3.35] minecraft:weakness 25 0 true
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run effect give @e[distance=..3.35] minecraft:nausea 15 0 true
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run effect give @e[distance=..2] minecraft:mining_fatigue 15 0 true
# Viusals
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run particle minecraft:flame ~ ~.55 ~ 2 2 2 1 3000 force
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run particle minecraft:flame ~ ~.55 ~ 2 2 2 1 3000 force
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run particle minecraft:lava ~ ~.55 ~ 4 4 4 1 250 force
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run particle minecraft:poof ~ ~.55 ~ 2 2 2 1 750 force
# Remove Ancient Debris
execute as @e[type=minecraft:armor_stand,tag=therm_entity] at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:ancient_debris run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:ancient_debris
# SFX
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run playsound minecraft:entity.ender_dragon.flap master @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run playsound minecraft:entity.evoker.prepare_attack master @a[distance=..25]
# Kill AS
kill @e[type=minecraft:armor_stand,tag=therm_entity]
