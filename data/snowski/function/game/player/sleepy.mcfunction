execute as @a[scores={dontsleep=1..}] run effect give @s wither 1 100 true
execute as @a unless entity @s[scores={dontsleep=1..}] run effect clear @s wither
scoreboard players reset @a[scores={dontsleep=1..}] sbdamage
scoreboard players reset @a[scores={dontsleep=1..}] dontsleep