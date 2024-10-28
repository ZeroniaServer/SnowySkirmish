$execute positioned 0.0 0 0.0 run summon marker $(direction) {Tags:["sleighDirection"]}
data modify storage snowski:sleigh Motion set from entity @e[type=marker,tag=sleighDirection,limit=1] Pos
kill @e[tag=sleighDirection]