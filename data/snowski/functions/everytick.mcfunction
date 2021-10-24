#> Loop functions for snowballs
function snowski:weapons/snowball/throw
function snowski:weapons/snowball/replenish

#> Lobby Loop
function snowski:game/lobby/globals

#> Game loop
function snowski:game/mode/loop

#> Loop functions for iceballs
function snowski:weapons/iceball/throw

#> Loop functions for blizzards
function snowski:weapons/blizzard/throw
function snowski:weapons/blizzard/effect

#> Loop functions for campfire revive points
function snowski:weapons/campfire/spawn
function snowski:weapons/campfire/functionality

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

#> Player related loop functions
function snowski:game/player/globals
function snowski:game/player/knockout
function snowski:game/player/hotchoco