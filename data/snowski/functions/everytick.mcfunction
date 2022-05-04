#> Game leaving
function snowski:game/mode/leaveicon

#> Modification changes
function snowski:lobby/controller

#> Loop functions for campfire revive points
function snowski:weapons/campfire/spawn
function snowski:weapons/campfire/functionality

#> Loop functions for snowballs
function snowski:weapons/snowball/throw
function snowski:weapons/snowball/replenish

#> Lobby Loops
function snowski:game/lobby/globals
function snowski:game/lobby/credits

#> Game loop
function snowski:game/mode/loop

#> Loop functions for iceballs
function snowski:weapons/iceball/throw

#> Loop functions for blizzards
function snowski:weapons/blizzard/throw
function snowski:weapons/blizzard/effect

#> Loop functions for candy canes
function snowski:weapons/candycane/smash

#> Global player damage manager (part of the snowball functions folder)
execute as @a[scores={sbdamage=1..}] at @s run function snowski:weapons/snowball/takedamage

#> Game related loop functions
function snowski:game/mode/campfire

#> Elf gift related functions
function snowski:game/mode/elf/animation

#> Powerup related loop functions
function snowski:game/mode/powerup/pickup

#> Snowman related loop
function snowski:weapons/snowman/loop
function snowski:weapons/snowman/snoman_shoot_arrow

#> Sleigh related loop
function snowski:weapons/sleigh/functionality
function snowski:weapons/sleigh/spawn

#> Player related loop functions
function snowski:game/player/globals
function snowski:game/player/knockout
function snowski:game/player/hotchoco

tag @a remove sbdamaged
tag @a remove bbdamaged
tag @a remove ccdamaged
scoreboard players reset @a[scores={dropsb=1..}] dropsb