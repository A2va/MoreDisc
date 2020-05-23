summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Jukebox"]}

execute if predicate more_disc:c418_13 run scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=Jukebox] DiscId 0
execute if predicate more_disc:c418_13 run playsound minecraft:custom.c418_13 record @s ~ ~ ~
