##Blatantly stolen from Meteor Miners but it works

scoreboard players remove @a mvpscore 1
execute if entity @a[scores={mvpscore=1024..}] run scoreboard players remove @a mvpscore 1024
execute if entity @a[scores={mvpscore=512..}] run scoreboard players remove @a mvpscore 512
execute if entity @a[scores={mvpscore=256..}] run scoreboard players remove @a mvpscore 256
execute if entity @a[scores={mvpscore=128..}] run scoreboard players remove @a mvpscore 128
execute if entity @a[scores={mvpscore=64..}] run scoreboard players remove @a mvpscore 64
execute if entity @a[scores={mvpscore=32..}] run scoreboard players remove @a mvpscore 32
execute if entity @a[scores={mvpscore=16..}] run scoreboard players remove @a mvpscore 16
execute if entity @a[scores={mvpscore=8..}] run scoreboard players remove @a mvpscore 8
execute if entity @a[scores={mvpscore=4..}] run scoreboard players remove @a mvpscore 4
execute if entity @a[scores={mvpscore=2..}] run scoreboard players remove @a mvpscore 2
execute if entity @a[scores={mvpscore=1..}] run scoreboard players remove @a mvpscore 1

execute if entity @a[scores={mvpscore=1..}] run function snowski:game/mode/mvpstuff/pogger_calculation