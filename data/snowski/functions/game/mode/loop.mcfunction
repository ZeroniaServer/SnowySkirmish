function snowski:game/mode/start

execute as @e[type=item] at @s run tp @s @p
kill @e[type=item]

xp set @a 0 points
xp set @a 0 levels