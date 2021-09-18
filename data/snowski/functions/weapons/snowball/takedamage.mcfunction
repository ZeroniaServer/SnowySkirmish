execute as @s[scores={sbdamage=1..,Health=1..}] run scoreboard players remove @s Health 1
execute as @s[scores={sbdamage=1..}] run scoreboard players remove @s sbdamage 1

execute as @s[scores={sbdamage=1..}] run function snowski:weapons/snowball/takedamage