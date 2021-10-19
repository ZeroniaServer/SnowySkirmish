#> IceImpact tag
tag @s[scores={sbdamage=100..,nnhealth=2..}] add IceImpact

#> General damage
execute as @s[scores={sbdamage=1..,nnhealth=2..}] run scoreboard players remove @s nnhealth_mod 1
execute as @s[scores={sbdamage=1..,nnhealth=2..}] run scoreboard players remove @s nnhealth 1
execute as @s[scores={sbdamage=1..}] run scoreboard players remove @s sbdamage 1

execute as @s[scores={sbdamage=1..}] run function snowski:weapons/snowball/takedamage