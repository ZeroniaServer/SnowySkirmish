#function snowski:game/mode/end
function snowski:devsetup/delete

# The painful process of adding all scoreboards with a function
scoreboard objectives add bookpain dummy
scoreboard objectives add CmdData dummy
scoreboard objectives add dontsleep minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add drinkchoco minecraft.used:minecraft.potion
scoreboard objectives add elftime dummy
scoreboard objectives add giveblocks dummy
scoreboard objectives add HasPowerup dummy
scoreboard objectives add hatchange trigger
scoreboard objectives add hatscore dummy
scoreboard objectives add iceballammo dummy
scoreboard objectives add knocktime dummy
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add repsb dummy
scoreboard objectives add RNGmax dummy
scoreboard objectives add RNGscore dummy
scoreboard objectives add sbdamage dummy
scoreboard objectives add snowballammo dummy
scoreboard objectives add snowmanarrow dummy
scoreboard objectives add snowmanspray dummy
scoreboard objectives add throwsb minecraft.used:minecraft.snowball
scoreboard objectives add mvpscore dummy
scoreboard objectives add giftcollect dummy
scoreboard objectives add killscollect dummy
scoreboard objectives add deathcollect dummy
scoreboard objectives add leavegame trigger
scoreboard objectives add joinspec trigger
scoreboard objectives add blizzsound dummy
scoreboard objectives add canesmash minecraft.custom:minecraft.damage_dealt
scoreboard objectives add craftblock minecraft.crafted:minecraft.snow_block
scoreboard objectives add dropsb minecraft.dropped:minecraft.snowball
scoreboard objectives add hittarget minecraft.custom:minecraft.target_hit
scoreboard objectives add GameID dummy
scoreboard objectives add playerUUID dummy
scoreboard objectives add UUIDtracker dummy
scoreboard objectives add resettracker dummy
scoreboard objectives add spawnturret minecraft.used:minecraft.ghast_spawn_egg

#End of adding scores
#Time to set all CmdData scores, hooray!
scoreboard players set $gameEnd CmdData 12000
scoreboard players set $fcountdown CmdData 11800
scoreboard players set $gameMid CmdData 6000
scoreboard players set $powerupspawn 200
scoreboard players set $blocksgreen CmdData 75
scoreboard players set $blocksred CmdData 75
scoreboard players set $30sec CmdData 30
scoreboard players set $onesec CmdData 20
scoreboard players set $quickstart CmdData 10
scoreboard players set $tensec CmdData 10
scoreboard players set $powerupspawn2 CmdData 9
scoreboard players set $elfCount CmdData 0
scoreboard players set $elfMax CmdData 7
scoreboard players set $keepCount CmdData 0

execute unless score $gametime CmdData matches 0.. run scoreboard players set $gametime CmdData 0
execute unless score $gamestate CmdData matches 0.. run scoreboard players set $gamestate CmdData 0
execute unless score $GameID GameID matches -2147483648.. run scoreboard players set $GameID GameID 0

team add Lobby
team add Green
team add Red
team add Spectator
team add Developer

gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doImmediateRespawn true
gamerule mobGriefing false
gamerule announceAdvancements false

time set 18000
weather clear

team modify Lobby color gray
team modify Spectator color blue
team modify Green color green
team modify Red color red
team modify Developer color dark_green

team modify Lobby collisionRule never
team modify Red collisionRule never
team modify Green collisionRule never
team modify Spectator collisionRule never

team modify Lobby friendlyFire false
team modify Red friendlyFire false
team modify Green friendlyFire false
team modify Spectator friendlyFire false

team modify Lobby seeFriendlyInvisibles false
team modify Red seeFriendlyInvisibles false
team modify Green seeFriendlyInvisibles false
team modify Spectator seeFriendlyInvisibles false

# Gamerules
gamerule naturalRegeneration false
gamerule showDeathMessages false
gamerule mobGriefing false

#tellraw @a ["",{"text":"[Zeronia]: ","bold":true,"color":"green"},{"text":"Successfully initialized team settings, game rules and scoreboard settings.","color":"gold"}]