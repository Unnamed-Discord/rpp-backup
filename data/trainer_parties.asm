TrainerDataPointers:
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw CamperData
	dw PicnickerData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw CoupleData
	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Green1Data
	dw SwimmerFData ; Shared with Beauty
	dw RocketFData ; Shared with male Rocket
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw AceTrainerMData
	dw AceTrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Green2Data
	dw Green3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData
	dw HexManiacData
	dw PkmnTrainerData

; first is the name, followed by the first byte of the data

; if not a Special Trainer,
	; first byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; FF-terminated
; if first byte == SPECIAL_TRAINER, then
	; each Pokemon entry is Level, Species, Moveset
	; FF-terminated
; if first byte == SPECIAL_TRAINER2, then
	; second byte is custom sprite number
	; third byte is custom AI number
	; each Pokemon entry is Level, Species, Moveset
	; FF-terminated
; if first byte == CUSTOM_PIC, then
	; second byte is custom sprite number
	; third byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; FF-terminated
; if first byte == SPECIAL_LEVELS, then
	; each Pokemon entry is Level, Species
	; FF-terminated

	
BrockData:
	db "Brock@"
	db SPECIAL_TRAINER
	
	db 12,GEODUDE
	moveset TACKLE, DEFENSE_CURL, 0, 0
	
	db 14,ONIX
	moveset TACKLE, BIND, HARDEN, ROCK_TOMB
	db $FF
	
MistyData:
	db "Misty@"
	db SPECIAL_TRAINER
	
	db 18,STARYU
	moveset TACKLE, HARDEN, RECOVER, WATER_PULSE
	
	db 21,STARMIE
	moveset TACKLE, SWIFT, RECOVER, WATER_PULSE
	db $FF
	
LtSurgeData:
	db "Lt.Surge@"
	db SPECIAL_TRAINER
	
	db 21,VOLTORB
	moveset THUNDERBOLT, TACKLE, SCREECH, SONICBOOM
	
	db 18,PIKACHU
	moveset THUNDERBOLT, THUNDER_WAVE, QUICK_ATTACK, DOUBLE_TEAM
	
	db 24,RAICHU
	moveset THUNDERBOLT, THUNDER_WAVE, QUICK_ATTACK, DOUBLE_TEAM
	db $FF
	
ErikaData:
	db "Erika@"
	db SPECIAL_TRAINER
	
	db 29,VICTREEBEL
	moveset STUN_SPORE, ACID, POISONPOWDER, GIGA_DRAIN
	
	db 24,TANGELA
	moveset POISONPOWDER, CONSTRICT, VINE_WHIP, GIGA_DRAIN
	
	db 29,BELLOSSOM
	moveset SLEEP_POWDER, SOLARBEAM, GIGA_DRAIN, PETAL_DANCE
	db $FF
	
KogaData:
	db "Koga@"
	db SPECIAL_TRAINER
	
	db 37,VENOMOTH
	moveset CONFUSION, GUST, SUPERSONIC, TOXIC
	
	db 39,MUK
	moveset MINIMIZE, SLUDGE, ACID_ARMOR, TOXIC
	
	db 37,CROBAT
	moveset DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, POISON_FANG
	
	db 43,WEEZING
	moveset TACKLE, SLUDGE, SMOKESCREEN, TOXIC
	db $FF
	
SabrinaData:
	db "Sabrina@"
	db SPECIAL_TRAINER
	
	db 38,KADABRA
	moveset DISABLE, PSYBEAM, RECOVER, PSYCHIC_M
	
	db 37,MR_MIME
	moveset CONFUSION, BARRIER, LIGHT_SCREEN, DOUBLESLAP
	
	db 38,ESPEON
	moveset SAND_ATTACK, QUICK_ATTACK, SWIFT, PSYCHIC_M
	
	db 43,ALAKAZAM
	moveset SHADOW_BALL, RECOVER, PSYWAVE, REFLECT
	db $FF
	
BlaineData:
	db "Blaine@"
	db SPECIAL_TRAINER
	
	db 42,GROWLITHE
	moveset BITE, ROAR, TAKE_DOWN, FIRE_BLAST
	
	db 40,PONYTA
	moveset STOMP, AGILITY, FIRE_SPIN, FIRE_BLAST
	
	db 42,RAPIDASH
	moveset STOMP, AGILITY, FIRE_SPIN, FIRE_BLAST
	
	db 45,ARCANINE
	moveset BITE, ROAR, EXTREMESPEED, FIRE_BLAST
	
	db 47,MAGMAR
	moveset FIRE_PUNCH, CONFUSE_RAY, FIRE_BLAST, SMOG
	db $FF
	
; Giovanni Gym Battle
	db "Giovanni@"
	db SPECIAL_TRAINER2
	db GIOVANNI_2 ; pic
	db AI_HYPER_POTION ; AI
	
	db 45,RHYDON
	moveset TAKE_DOWN, ROCK_BLAST, LEER, EARTHQUAKE
	
	db 42,STEELIX
	moveset IRON_TAIL, ROCK_BLAST, RAGE, IRON_DEFENSE
	
	db 44,NIDOQUEEN
	moveset DOUBLE_KICK, EARTHQUAKE, POISON_STING, BODY_SLAM
	
	db 45,NIDOKING
	moveset DOUBLE_KICK, EARTHQUAKE, POISON_STING, THRASH
	
	db 50,RHYPERIOR
	moveset TAKE_DOWN, ANCIENTPOWER, ROCK_BLAST, EARTHQUAKE
	db $FF
	
GiovanniData:
	; Hideout
	db "Giovanni@"
	db SPECIAL_TRAINER
	
	db 25,ONIX
	moveset ROCK_THROW, BIND, RAGE, HARDEN
	
	db 24,RHYHORN
	moveset STOMP, FURY_ATTACK, LEER, TAIL_WHIP
	
	db 29,KANGASKHAN
	moveset SUCKER_PUNCH, MEGA_PUNCH, BITE, TAIL_WHIP
	db $FF
	
	
	; Silph Co
	db "Giovanni@"
	db SPECIAL_TRAINER
	
	db 35,ONIX
	moveset IRON_TAIL, BIND, RAGE, ROCK_THROW
	
	db 37,RHYHORN
	moveset FURY_ATTACK, LEER, STOMP, ROCK_BLAST
	
	db 37,NIDORINO
	moveset HORN_ATTACK, POISON_STING, DOUBLE_KICK, FURY_ATTACK
	
	db 41,NIDOQUEEN
	moveset DOUBLE_KICK, TAIL_WHIP, POISON_STING, BODY_SLAM
	db $FF
	
LoreleiData:
	db "Lorelei@"
	db SPECIAL_TRAINER
	
	db 54,DEWGONG
	moveset SURF, ICE_BEAM, AURORA_BEAM, REST
	
	db 53,CLOYSTER
	moveset CLAMP, SPIKE_CANNON, ICE_BEAM, BLIZZARD
	
	db 54,SLOWKING
	moveset ICE_BEAM, AMNESIA, SURF, PSYCHIC_M
	
	db 56,JYNX
	moveset DOUBLESLAP, ICE_PUNCH, DRAININGKISS, LOVELY_KISS
	
	db 56,LAPRAS
	moveset BODY_SLAM, CONFUSE_RAY, SURF, ICE_BEAM
	db $FF
	
BrunoData:
	db "Bruno@"
	db SPECIAL_TRAINER
	
	db 53,ONIX
	moveset EARTHQUAKE, ROCK_TOMB, IRON_TAIL, ROAR
	
	db 55,HITMONCHAN
	moveset SHADOW_PUNCH, ICE_PUNCH, THUNDERPUNCH, FIRE_PUNCH
	
	db 55,HITMONLEE
	moveset MEGA_KICK, HI_JUMP_KICK, DOUBLE_KICK, DOUBLE_TEAM
	
	db 56,STEELIX
	moveset DOUBLE_EDGE, IRON_TAIL, IRON_DEFENSE, ROCK_TOMB
	
	db 58,MACHAMP
	moveset CROSS_CHOP, ROCK_TOMB, STRENGTH, SUBMISSION
	db $FF	
	
AgathaData:
	db "Agatha@"
	db SPECIAL_TRAINER
	
	db 56,MISDREAVUS
	moveset POWER_GEM, SHADOW_BALL, HEX, PSYBEAM
	
	db 56,HONCHKROW
	moveset NIGHT_SLASH, HEX, HEALINGLIGHT, ACROBATICS
	
	db 55,HOUNDOOM
	moveset FLAMETHROWER, SHADOW_BALL, HEX, BITE
	
	db 58,MISMAGIUS
	moveset DARK_PULSE, NIGHT_SHADE, HEX, GLARE
	
	db 60,GENGAR
	moveset HYPNOSIS, DREAM_EATER, HEX, HEALINGLIGHT
	db $FF
	
LanceData:
	db "Lance@"
	db SPECIAL_TRAINER
	
	db 58,GYARADOS
	moveset DRAGONBREATH, TWISTER, HYPER_BEAM, ICE_FANG
	
	db 56,CHARIZARD
	moveset FLAMETHROWER, DRAGONBREATH, EARTHQUAKE, METAL_CLAW
	
	db 56,KINGDRA
	moveset WHIRLPOOL, DRAGONBREATH, DRAGON_PULSE, FOCUS_ENERGY
	
	db 60,AERODACTYL
	moveset AERIAL_ACE, DRAGONBREATH, ANCIENTPOWER, STEEL_WING
	
	db 62,DRAGONITE
	moveset AMNESIA, DRAGONBREATH, DRACO_METEOR, THUNDER_WAVE
	db $FF	
	
Green1Data:
	; Oak's Lab
	db "[RIVAL]@",5,SQUIRTLE,$FF
	db "[RIVAL]@",5,BULBASAUR,$FF
	db "[RIVAL]@",5,CHARMANDER,$FF
	
	
	; Beside Viridian
	db "[RIVAL]@",SPECIAL_LEVELS,9,PIDGEY,8,SQUIRTLE,$FF
	db "[RIVAL]@",SPECIAL_LEVELS,9,PIDGEY,8,BULBASAUR,$FF
	db "[RIVAL]@",SPECIAL_LEVELS,9,PIDGEY,8,CHARMANDER,$FF
	
	
	; Cerulean
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 18,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 15,ABRA
	moveset TELEPORT, 0, 0, 0
	
	db 15,RATTATA
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, 0
	
	db 17,SQUIRTLE
	moveset TACKLE, TAIL_WHIP, BUBBLE, WATER_GUN
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 18,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 15,ABRA
	moveset TELEPORT, 0, 0, 0
	
	db 15,RATTATA
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, 0
	
	db 17,BULBASAUR
	moveset SLEEP_POWDER, POISONPOWDER, LEECH_SEED, VINE_WHIP
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 18,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 15,ABRA
	moveset TELEPORT, 0, 0, 0
	
	db 15,RATTATA
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, 0
	
	db 17,CHARMANDER
	moveset SCRATCH, GROWL, EMBER, METAL_CLAW
	db $FF
	
	
	
Green2Data:
	; SS Anne
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 19,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 16,RATICATE
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, HYPER_FANG
	
	db 18,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 20,WARTORTLE
	moveset WITHDRAW, BITE, BUBBLE, WATER_GUN
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 19,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 16,RATICATE
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, HYPER_FANG
	
	db 18,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 20,IVYSAUR
	moveset TACKLE, GROWL, LEECH_SEED, VINE_WHIP
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 19,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 16,RATICATE
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, HYPER_FANG
	
	db 18,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 20,CHARMELEON
	moveset SMOKESCREEN, GROWL, EMBER, METAL_CLAW
	db $FF
	
	
	
	; Pokemon Tower
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 25,PIDGEOTTO
	moveset GUST, SAND_ATTACK, QUICK_ATTACK, WHIRLWIND
	
	db 23,GROWLITHE
	moveset BITE, ROAR, EMBER, LEER
	
	db 22,EXEGGCUTE
	moveset BARRAGE, HYPNOSIS, LEECH_SEED, 0
	
	db 20,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 25,WARTORTLE
	moveset TAIL_WHIP, BUBBLE, WATER_GUN, BITE
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 25,PIDGEOTTO
	moveset GUST, SAND_ATTACK, QUICK_ATTACK, WHIRLWIND
	
	db 23,GYARADOS
	moveset THRASH, TACKLE, BITE, 0
	
	db 22,GROWLITHE
	moveset BITE, ROAR, EMBER, LEER
	
	db 20,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 25,IVYSAUR
	moveset GROWL, LEECH_SEED, VINE_WHIP, POISONPOWDER
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 25,PIDGEOTTO
	moveset GUST, SAND_ATTACK, QUICK_ATTACK, WHIRLWIND
	
	db 23,EXEGGCUTE
	moveset BARRAGE, HYPNOSIS, LEECH_SEED, 0
	
	db 22,GYARADOS
	moveset THRASH, TACKLE, BITE, 0
	
	db 20,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 25,CHARMELEON
	moveset SMOKESCREEN, EMBER, LEER, RAGE
	db $FF
	
	
	
	; Silph Co
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 37,PIDGEOT
	moveset WING_ATTACK, ACROBATICS, QUICK_ATTACK, WHIRLWIND
	
	db 38,GROWLITHE
	moveset ROAR, EMBER, LEER, TAKE_DOWN
	
	db 35,EXEGGCUTE
	moveset REFLECT, HYPNOSIS, LEECH_SEED, STUN_SPORE
	
	db 35,ALAKAZAM
	moveset SHADOW_BALL, AMNESIA, REFLECT, RECOVER
	
	db 40,BLASTOISE
	moveset BUBBLE, WATER_GUN, BITE, WITHDRAW
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 37,PIDGEOT
	moveset WING_ATTACK, ACROBATICS, QUICK_ATTACK, WHIRLWIND
	
	db 38,GYARADOS
	moveset DRAGON_RAGE, TACKLE, BITE, LEER
	
	db 38,GROWLITHE
	moveset ROAR, EMBER, LEER, TAKE_DOWN
	
	db 35,ALAKAZAM
	moveset SHADOW_BALL, AMNESIA, REFLECT, RECOVER
	
	db 40,VENUSAUR
	moveset LEECH_SEED, VINE_WHIP, POISONPOWDER, RAZOR_LEAF
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 37,PIDGEOT
	moveset WING_ATTACK, ACROBATICS, QUICK_ATTACK, WHIRLWIND
	
	db 35,EXEGGCUTE
	moveset REFLECT, HYPNOSIS, LEECH_SEED, STUN_SPORE
	
	db 38,GYARADOS
	moveset DRAGON_RAGE, TACKLE, BITE, LEER
	
	db 35,ALAKAZAM
	moveset SHADOW_BALL, AMNESIA, REFLECT, RECOVER
	
	db 40,CHARIZARD
	moveset LEER, FLAMETHROWER, SMOKESCREEN, WING_ATTACK
	db $FF
	
	
	
	; Before Pokemon Leage
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 47,PIDGEOT
	moveset WING_ATTACK, ACROBATICS, QUICK_ATTACK, GUST
	
	db 45,RHYHORN
	moveset ROCK_BLAST, TAKE_DOWN, FURY_ATTACK, HORN_DRILL
	
	db 45,GROWLITHE
	moveset FLAME_WHEEL, TAKE_DOWN, LEER, AGILITY
	
	db 47,EXEGGCUTE
	moveset SOLARBEAM, POISONPOWDER, SLEEP_POWDER, STUN_SPORE
	
	db 50,ALAKAZAM
	moveset PSYCHIC_M, AMNESIA, SHADOW_BALL, DISABLE
	
	db 53,BLASTOISE
	moveset HYDRO_PUMP, WITHDRAW, SKULL_BASH, BITE
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 47,PIDGEOT
	moveset WING_ATTACK, ACROBATICS, QUICK_ATTACK, GUST
	
	db 45,RHYHORN
	moveset ROCK_BLAST, TAKE_DOWN, FURY_ATTACK, HORN_DRILL
	
	db 45,GYARADOS
	moveset THRASH, TWISTER, HYDRO_PUMP, LEER
	
	db 47,GROWLITHE
	moveset FLAME_WHEEL, TAKE_DOWN, LEER, AGILITY
	
	db 50,ALAKAZAM
	moveset PSYCHIC_M, AMNESIA, SHADOW_BALL, DISABLE
	
	db 53,VENUSAUR
	moveset POISONPOWDER, RECOVER, RAZOR_LEAF, GROWTH
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 47,PIDGEOT
	moveset WING_ATTACK, ACROBATICS, QUICK_ATTACK, GUST
	
	db 45,RHYHORN
	moveset ROCK_BLAST, TAKE_DOWN, FURY_ATTACK, HORN_DRILL
	
	db 45,EXEGGCUTE
	moveset SOLARBEAM, POISONPOWDER, SLEEP_POWDER, STUN_SPORE
	
	db 47,GYARADOS
	moveset THRASH, TWISTER, HYDRO_PUMP, LEER
	
	db 50,ALAKAZAM
	moveset PSYCHIC_M, AMNESIA, SHADOW_BALL, DISABLE
	
	db 53,CHARIZARD
	moveset FLAMETHROWER, WING_ATTACK, SLASH, LEER
	db $FF
	
	
	
Green3Data:
	; Champion
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 61,PIDGEOT
	moveset AERIAL_ACE, ACROBATICS, SAND_ATTACK, WHIRLWIND
	
	db 59,ALAKAZAM
	moveset PSYCHIC_M, SHADOW_BALL, RECOVER, REFLECT
	
	db 61,RHYDON
	moveset TAKE_DOWN, EARTHQUAKE, ROCK_TOMB, LEER
	
	db 61,ARCANINE
	moveset EXTREMESPEED, FLAMETHROWER, ROAR, BITE
	
	db 63,EXEGGUTOR
	moveset GIGA_DRAIN, EGG_BOMB, SLEEP_POWDER, LIGHT_SCREEN
	
	db 65,BLASTOISE
	moveset HYDRO_PUMP, WITHDRAW, SKULL_BASH, BITE
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 61,PIDGEOT
	moveset AERIAL_ACE, ACROBATICS, SAND_ATTACK, WHIRLWIND
	
	db 59,ALAKAZAM
	moveset PSYCHIC_M, SHADOW_BALL, RECOVER, REFLECT
	
	db 61,RHYDON
	moveset TAKE_DOWN, EARTHQUAKE, ROCK_TOMB, LEER
	
	db 61,GYARADOS
	moveset HYDRO_PUMP, DRAGON_RAGE, BITE, THRASH
	
	db 63,ARCANINE
	moveset EXTREMESPEED, FLAMETHROWER, ROAR, BITE
	
	db 65,VENUSAUR
	moveset SOLARBEAM, RECOVER, GIGA_DRAIN, GROWTH
	db $FF
	
	
	
	db "[RIVAL]@"
	db SPECIAL_TRAINER
	
	db 61,PIDGEOT
	moveset AERIAL_ACE, ACROBATICS, SAND_ATTACK, WHIRLWIND
	
	db 59,ALAKAZAM
	moveset PSYCHIC_M, SHADOW_BALL, RECOVER, REFLECT
	
	db 61,RHYDON
	moveset TAKE_DOWN, EARTHQUAKE, ROCK_TOMB, LEER
	
	db 63,EXEGGUTOR
	moveset GIGA_DRAIN, EGG_BOMB, SLEEP_POWDER, LIGHT_SCREEN
	
	db 61,GYARADOS
	moveset HYDRO_PUMP, DRAGON_RAGE, BITE, THRASH
	
	db 65,CHARIZARD
	moveset FIRE_BLAST, AERIAL_ACE, SLASH, FLARE_BLITZ
	db $FF
	
YoungsterData:
	db "Conny@",11,ZIGZAGOON,RATTATA,$FF
	db "Arnold@",14,SPEAROW,$FF
	db "Anthony@",10,RATTATA,RATTATA,ZUBAT,$FF
	db "Samuel@",14,RATTATA,EKANS,ZUBAT,$FF
	db "Adam@",15,RATTATA,SPEAROW,$FF
	db "Marshall@",17,SLOWPOKE,$FF
	db "Calvin@",14,EKANS,SANDSHREW,$FF
	db "Chad@",21,NIDORAN_M,$FF
	db "Dan@",21,EKANS,$FF
	db "Dave@",19,SANDSHREW,ZUBAT,$FF
	db "Josh@",17,ZIGZAGOON,ZIGZAGOON,LINOONE,$FF
	db "Timmy@",18,NIDORAN_M,NIDORINO,$FF
	db "Nash@",17,SPEAROW,RATTATA,RATTATA,SPEAROW,$FF
	
BugCatcherData:
	db "Flick@",6,WEEDLE,CATERPIE,$FF
	db "Finn@",7,WEEDLE,KAKUNA,WEEDLE,$FF
	db "Jake@",9,WEEDLE,$FF
	db "David@",10,CATERPIE,WEEDLE,CATERPIE,$FF
	db "Lou@",9,WEEDLE,KAKUNA,CATERPIE,METAPOD,$FF
	db "Larry@",11,CATERPIE,METAPOD,$FF
	db "Chuck@",11,WEEDLE,KAKUNA,$FF
	db "Zach@",10,CATERPIE,METAPOD,CATERPIE,$FF
	db "Chris@",14,CATERPIE,WEEDLE,$FF
	db "Rick@",16,WEEDLE,CATERPIE,WEEDLE,$FF
	db "Bob@",20,BUTTERFREE,$FF
	db "Gray@",18,METAPOD,CATERPIE,VENONAT,$FF
	db "Matt@",19,BEEDRILL,BEEDRILL,$FF
	db "Ed@",20,CATERPIE,WEEDLE,VENONAT,$FF
	
LassData:
	db "Nicole@",9,PIDGEY,PIDGEY,$FF
	db "Jennifer@",10,ZIGZAGOON,NIDORAN_M,$FF
	db "Orange@",14,JIGGLYPUFF,$FF
	db "Rachel@",31,PARAS,PARAS,PARASECT,$FF
	db "Christy@",11,ODDISH,BELLSPROUT,$FF
	db "Jessica@",14,CLEFAIRY,$FF
	db "Clara@",16,PIDGEY,NIDORAN_F,$FF
	db "Monica@",14,PIDGEY,NIDORAN_F,$FF
	db "Lulu@",15,NIDORAN_M,NIDORAN_F,$FF
	db "Brooke@",13,ODDISH,PIDGEY,ODDISH,$FF
	db "Rose@",18,TOGETIC,ESPEON,$FF
	db "Martha@",18,RATTATA,PIKACHU,$FF
	db "Amanda@",23,NIDORAN_F,NIDORINA,$FF
	db "Meadow@",24,MEOWTH,MEOWTH,MEOWTH,$FF
	db "Whitney@",19,PIDGEY,RATTATA,NIDORAN_M,MEOWTH,PIKACHU,$FF
	db "Samantha@",22,CLEFAIRY,CLEFAIRY,$FF
	db "Katie@",23,BELLSPROUT,WEEPINBELL,$FF
	db "Bella@",23,ODDISH,GLOOM,$FF
	
SailorData:
	db "Moon@",18,MACHOP,SHELLDER,$FF
	db "Will@",17,MACHOP,TENTACOOL,$FF
	db "Lewis@",21,SHELLDER,$FF
	db "Huey@",17,HORSEA,SHELLDER,TENTACOOL,$FF
	db "Dave@",18,TENTACOOL,STARYU,$FF
	db "Eugene@",17,HORSEA,HORSEA,HORSEA,$FF
	db "Flynn@",20,MACHOP,$FF
	db "Hans@",21,PIKACHU,PIKACHU,$FF
	
CamperData:
	db "Daniel@",9,DIGLETT,SANDSHREW,$FF
	db "Lex@",14,POLIWAG,GOLDEEN,$FF
	db "Harry@",18,MANKEY,$FF
	db "Ronald@",20,SQUIRTLE,$FF
	db "Mark@",16,SPEAROW,RATICATE,$FF
	db "Mike@",18,DIGLETT,DIGLETT,SANDSHREW,$FF
	db "Nick@",21,GROWLITHE,HOUNDOUR,$FF
	db "Robert@",19,RATTATA,DIGLETT,EKANS,SANDSHREW,$FF
	db "Ian@",29,NIDORAN_M,NIDORINO,$FF
	db "Flint@",14,ZIGZAGOON,EKANS,$FF
	
PicnickerData:
	db "Cindy@",19,GOLDEEN,$FF
	db "Debra@",16,RATTATA,PIKACHU,$FF
	db "Heidi@",16,PIDGEY,PIDGEY,PIDGEY,$FF
	db "Brooke@",22,BULBASAUR,$FF
	db "Sammie@",18,ODDISH,BELLSPROUT,ODDISH,BELLSPROUT,$FF
	db "Hope@",23,MEOWTH,$FF
	db "Kim@",20,PIKACHU,CLEFAIRY,$FF
	db "Alice@",21,PIDGEY,PIDGEOTTO,$FF
	db "Becky@",21,JIGGLYPUFF,PIDGEY,MEOWTH,$FF
	db "Carol@",22,ODDISH,BULBASAUR,$FF
	db "Diana@",24,BULBASAUR,IVYSAUR,$FF
	db "Gina@",24,PIDGEY,MEOWTH,RATTATA,PIKACHU,MEOWTH,$FF
	db "Jenny@",30,POLIWAG,POLIWAG,$FF
	db "Clara@",27,PIDGEY,MEOWTH,PIDGEY,PIDGEOTTO,$FF
	db "Kelsey@",28,GOLDEEN,POLIWAG,HORSEA,$FF
	db "Missy@",31,GOLDEEN,SEAKING,$FF
	db "Donna@",22,BELLSPROUT,CLEFAIRY,$FF
	db "Susan@",20,MEOWTH,ODDISH,PIDGEY,$FF
	db "Nanci@",19,PIDGEY,RATTATA,RATTATA,BELLSPROUT,$FF
	db "Tina@",28,GLOOM,ODDISH,ODDISH,$FF
	db "Julie@",29,PIKACHU,RAICHU,$FF
	db "Connie@",33,CLEFAIRY,$FF
	db "Wendy@",29,BELLSPROUT,ODDISH,TANGELA,$FF
	db "Rei@",30,TENTACOOL,HORSEA,SEEL,$FF
	
PokemaniacData:
	db "Masuda@",30,RHYHORN,LICKITUNG,$FF
	db "Ben@",20,CUBONE,SLOWPOKE,$FF
	db "Scott@",20,SLOWPOKE,SLOWPOKE,SLOWPOKE,$FF
	db "Jessy@",CUSTOM_PIC,COSPLAY_GIRL,22,PIKACHU,CUBONE,$FF
	db "Andy@",25,SLOWPOKE,$FF
	db "Jerry@",40,CHARMELEON,LAPRAS,LICKITUNG,$FF
	db "Bruce@",23,CUBONE,SLOWPOKE,$FF
	
SuperNerdData:
	db "Teru@",11,VOLTORB,VOLTORB,$FF
	db "Eric@",16,PIKACHU,UMBREON,$FF
	db "Markus@",20,VOLTORB,KOFFING,VOLTORB,MAGNEMITE,$FF
	db "Alan@",22,GRIMER,MUK,GRIMER,$FF
	db "Derek@",26,KOFFING,$FF
	db "Iwata@",22,KOFFING,MAGNEMITE,WEEZING,$FF
	db "Owen@",20,MAGNEMITE,MAGNEMITE,KOFFING,MAGNEMITE,$FF
	db "Ben@",24,MAGNEMITE,VOLTORB,$FF
	db "Rick@",36,VULPIX,VULPIX,NINETALES,$FF
	db "Marty@",34,PONYTA,CHARMANDER,VULPIX,GROWLITHE,$FF
	db "Vince@",41,RAPIDASH,$FF
	db "Avery@",37,GROWLITHE,VULPIX,$FF
	
HikerData:
	db "Bruh@",10,GEODUDE,MACHOP,ONIX,$FF
	db "Dillon@",15,MACHOP,GEODUDE,$FF
	db "Russel@",13,GEODUDE,MANKEY,MACHOP,$FF
	db "Michael@",17,DIGLETT,ONIX,$FF
	db "Trent@",21,GEODUDE,ONIX,$FF
	db "Clark@",20,GEODUDE,MACHOP,GEODUDE,$FF
	db "Lenny@",21,MACHOP,ONIX,$FF
	db "Jay@",19,ONIX,GRAVELER,$FF
	db "Bryan@",21,GEODUDE,GEODUDE,GRAVELER,$FF
	db "Lucas@",25,SKARMORY,$FF
	db "George@",20,MACHOP,ONIX,$FF
	db "Devan@",19,GEODUDE,MACHOP,GEODUDE,GEODUDE,$FF
	db "Steve@",20,ONIX,ONIX,GEODUDE,$FF
	db "Kurt@",21,GEODUDE,GRAVELER,$FF
	
BikerData:
	db "Chazz@",28,KOFFING,GRIMER,EKANS,$FF
	db "Glenn@",29,RHYHORN,RHYHORN,$FF
	db "Dwayne J@",25,KOFFING,GRIMER,$FF
	db "Joel@",28,GRIMER,SLUGMA,$FF
	db "Kyle@",29,GRIMER,KOFFING,$FF
	db "Billy@",33,DITTO,$FF
	db "Alex@",26,GRIMER,GRIMER,GRIMER,GRIMER,$FF
	db "Isaac@",28,WEEZING,KOFFING,WEEZING,$FF
	db "Jacob@",33,MUK,$FF
	db "Wesley@",29,VOLTORB,MAGNEMITE,$FF
	db "Logan@",29,HOUNDOUR,MURKROW,$FF
	db "Jared@",25,KOFFING,WEEZING,KOFFING,KOFFING,WEEZING,$FF
	db "Rick@",26,KOFFING,KOFFING,GRIMER,KOFFING,$FF
	db "Jimmy@",28,SLUGMA,SLUGMA,KOFFING,$FF
	db "Reggie@",29,MURKROW,MUK,$FF
	
BurglarData:
	db "Crud@",29,GROWLITHE,VULPIX,$FF
	db "Dusty@",33,GROWLITHE,$FF
	db "Grimm@",28,VULPIX,CHARMANDER,PONYTA,$FF
	db "Dredge@",36,GROWLITHE,VULPIX,NINETALES,$FF
	db "Scummy@",41,TORKOAL,$FF
	db "Boot@",37,VULPIX,GROWLITHE,$FF
	db "Slice@",34,CHARMANDER,CHARMELEON,$FF
	db "Skid@",38,NINETALES,$FF
	db "Crust@",34,HOUNDOUR,PONYTA,$FF
	
EngineerData:
	db "Bernie@",21,MAGNEMITE,PIKACHU,$FF
	db "Flint@",21,MAGNEMITE,CHINCHOU,$FF
	db "Jack@",18,MAGNEMITE,PIKACHU,$FF

CoupleData: 
	db "Mike & Nat@",20,CUBONE,WEEPINBELL,$FF

FisherData:
	db "Man@",17,GOLDEEN,TENTACOOL,GOLDEEN,$FF
	db "Chad@",17,TENTACOOL,STARYU,SHELLDER,$FF
	db "Craig@",22,GOLDEEN,POLIWAG,GOLDEEN,$FF
	db "Price@",24,TENTACOOL,GOLDEEN,$FF
	db "Hank@",27,GOLDEEN,$FF
	db "Brad@",21,POLIWAG,SHELLDER,GOLDEEN,HORSEA,$FF
	db "Jimmy@",28,SEAKING,GOLDEEN,SEAKING,SEAKING,$FF
	db "Ralph@",31,SHELLDER,CLOYSTER,$FF
	db "Bob@",27,MAGIKARP,MAGIKARP,MAGIKARP,MAGIKARP,MAGIKARP,MAGIKARP,$FF
	db "Engler@",33,SEAKING,GOLDEEN,$FF
	db "Wilton@",24,MAGIKARP,MAGIKARP,$FF
	
SwimmerData:
	db "George@",16,HORSEA,SHELLDER,$FF
	db "Bruno@",30,TENTACOOL,SHELLDER,$FF
	db "Charlie@",29,GOLDEEN,HORSEA,STARYU,$FF
	db "Robert@",30,POLIWAG,POLIWHIRL,$FF
	db "Chris@",27,HORSEA,TENTACOOL,TENTACOOL,GOLDEEN,$FF
	db "Riley@",29,GOLDEEN,SHELLDER,SEAKING,$FF
	db "John@",30,HORSEA,HORSEA,$FF
	db "Abe@",27,TENTACOOL,TENTACOOL,STARYU,HORSEA,TENTACRUEL,$FF
	db "Matthew@",31,SHELLDER,CLOYSTER,$FF
	db "Kirk@",35,STARYU,$FF
	db "Parker@",28,HORSEA,HORSEA,SEADRA,HORSEA,$FF
	db "Ross@",33,SEADRA,TENTACRUEL,$FF
	db "Perry@",37,STARMIE,$FF
	db "Ryan@",33,STARYU,WARTORTLE,$FF
	db "Ben@",32,CHINCHOU,LANTURN,STARMIE,$FF
	db "Josiah@",31,TENTACOOL,TENTACOOL,TENTACRUEL,$FF
	
CueBallData:
	db "Chance@",28,MACHOP,MANKEY,MACHOP,$FF
	db "Nine@",29,MANKEY,MACHOP,$FF
	db "Chad@",33,MACHOP,$FF
	db "Scott@",29,MANKEY,PRIMEAPE,$FF
	db "Nick@",29,MACHOP,MACHOKE,$FF
	db "Reese@",33,MACHOKE,$FF
	db "Kenny@",26,MANKEY,MANKEY,MACHOKE,MACHOP,$FF
	db "Bruce@",29,PRIMEAPE,MACHOKE,$FF
	
GamblerData:
	db "Jerma@",18,POLIWAG,HORSEA,$FF
	db "Rich@",18,BELLSPROUT,ODDISH,$FF
	db "Dirk@",18,VOLTORB,MAGNEMITE,$FF
	db "Jasper@",18,GROWLITHE,VULPIX,$FF
	db "Green@",22,POLIWAG,POLIWAG,POLIWHIRL,$FF
	db "Biff@",22,ONIX,GEODUDE,GRAVELER,$FF
	db "Joel@",24,GROWLITHE,VULPIX,$FF
	
SwimmerFData:
BeautyData:
	db "Britney@",24,ODDISH,GLOOM,BELLOSSOM,$FF
	db "Amala@",24,BELLSPROUT,WEEPINBELL,$FF
	db "Selena@",26,EXEGGCUTE,$FF
	db "Ariana@",27,RATTATA,PIKACHU,RATTATA,$FF
	db "Taylor@",29,CLEFAIRY,MEOWTH,$FF
	db "Mel@",35,SEAKING,$FF
	db "Victoria@",30,SHELLDER,SHELLDER,CLOYSTER,$FF
	db "Emma@",31,POLIWAG,SEAKING,$FF
	db "Geri@",29,PIDGEOTTO,WIGGLYTUFF,$FF
	db "Dolly@",29,BULBASAUR,IVYSAUR,$FF
	db "Stevie@",33,WEEPINBELL,BELLSPROUT,WEEPINBELL,$FF
	db "Bonnie@",27,POLIWAG,GOLDEEN,SEAKING,GOLDEEN,POLIWAG,$FF
	db "Joan@",30,GOLDEEN,SEAKING,$FF
	db "Bjork@",29,STARYU,STARYU,STARYU,$FF
	db "Alyson@",30,SEADRA,HORSEA,SEADRA,$FF
	db "Amanda@",19,GOLDEEN,$FF ; Misty's Gym, Trainer # 0x10
	db "Billie@",30,TENTACOOL,HORSEA,SEEL,$FF ; Route 20, Trainer # 0x11
	db "Dua@",31,GOLDEEN,SEAKING,$FF ; Route 20, Trainer # 0x12
	
PsychicData:
	db "Yuri@",31,KADABRA,SLOWPOKE,MR_MIME,KADABRA,$FF
	db "Teru@",34,MR_MIME,KADABRA,$FF
	db "Kio@",33,SLOWPOKE,SLOWBRO,SLOWKING,$FF
	db "Rhen@",38,SLOWKING,$FF
	
RockerData:
	db "Debbie@",CUSTOM_PIC,ROCKER_F,20,VOLTORB,VOLTORB,VOLTORB,$FF
	db "Slider@",29,EKANS,ARBOK,$FF
	
JugglerData:
	db "Norman@",29,KADABRA,MR_MIME,$FF
	db "Flumm@",41,DROWZEE,HYPNO,KADABRA,KADABRA,$FF
	db "Fritz@",31,GRIMER,MUK,KOFFING,$FF
	db "Liam@",34,GRIMER,MUK,TENTACRUEL,$FF
	db "Cloyd@",48,MR_MIME,$FF
	db "Derek@",33,HYPNO,$FF
	db "Ringo@",38,CROBAT,MUK,$FF
	db "Shawn@",34,GOLBAT,WEEZING,MUK,$FF
	
TamerData:
	db "Cole@",34,NIDORINO,ARBOK,$FF
	db "Edgar@",33,ARBOK,NIDORINO,ARBOK,$FF
	db "Evan@",43,RHYHORN,$FF
	db "Jason@",39,ARBOK,TAUROS,$FF
	db "Phil@",44,PERSIAN,GOLDUCK,$FF
	db "Vince@",42,RHYHORN,PRIMEAPE,ARBOK,TAUROS,$FF
	
BirdKeeperData:
	db "Rod@",29,PIDGEY,PIDGEOTTO,$FF
	db "Abe@",25,SPEAROW,PIDGEY,PIDGEY,SPEAROW,SPEAROW,$FF
	db "Bob@",26,PIDGEY,PIDGEOTTO,SPEAROW,FEAROW,$FF
	db "Hank@",33,FARFETCHD,$FF
	db "Bret@",29,SPEAROW,FEAROW,$FF
	db "Fudd@",26,PIDGEOTTO,FARFETCHD,DODUO,PIDGEY,$FF
	db "Tobey@",28,DODRIO,DODUO,DODUO,$FF
	db "Chad@",29,SPEAROW,FEAROW,$FF
	db "Mike@",34,DODRIO,$FF
	db "Kyle@",26,SPEAROW,SPEAROW,FEAROW,SPEAROW,$FF
	db "Willy@",30,FEAROW,FEAROW,PIDGEOTTO,$FF
	db "Jeff@",39,PIDGEOTTO,PIDGEOTTO,PIDGEY,PIDGEOTTO,$FF
	db "Troy@",42,FARFETCHD,FEAROW,$FF
	db "Kevin@",28,PIDGEY,DODUO,PIDGEOTTO,$FF
	db "Jim@",26,MURKROW,SPEAROW,MURKROW,FEAROW,$FF
	db "Keaton@",29,PIDGEOTTO,FEAROW,$FF
	db "Chris@",28,SPEAROW,MURKROW,FEAROW,$FF
	
BlackbeltData:
	db "Kenji@",37,HITMONLEE,HITMONCHAN,$FF
	db "Lao@",31,MANKEY,MANKEY,PRIMEAPE,$FF
	db "Hung@",32,MACHOP,MACHOKE,$FF
	db "Chang@",36,PRIMEAPE,$FF
	db "Toru@",31,MACHOP,MANKEY,PRIMEAPE,$FF
	db "Yoshi@",40,MACHOP,MACHOKE,$FF
	db "Wong@",43,MACHOKE,$FF
	db "Simu@",38,MACHOKE,MACHOP,MACHOKE,$FF
	db "Wai@",43,MACHOKE,MACHOP,MACHOKE,$FF
	
GentlemanData:
	db "Alfred@",18,GROWLITHE,GROWLITHE,$FF
	db "Harold@",19,NIDORAN_M,NIDORAN_F,$FF
	db "Preston@",23,PIKACHU,$FF
	db "Gregory@",48,PRIMEAPE,$FF
	db "Howard@",17,GROWLITHE,PONYTA,$FF
	db "Nathan@",18,HOUNDOUR,$FF
	
ChannelerData:
	db "Amelia@",22,GASTLY,$FF
	db "Selene@",24,GASTLY,$FF
	db "Spectre@",23,MISDREAVUS,GASTLY,$FF
	db "Hope@",24,HAUNTER,$FF
	db "Stacy@",23,GASTLY,$FF
	db "Gwen@",24,GASTLY,$FF
	db "Mary@",24,HAUNTER,$FF
	db "Jane@",22,GASTLY,$FF
	db "Carly@",24,GASTLY,$FF
	db "Trixie@",23,GASTLY,MISDREAVUS,$FF
	db "Jodie@",24,HAUNTER,$FF
	db "Faith@",22,GASTLY,$FF
	db "Alice@",24,GASTLY,$FF
	db "Ashe@",23,HAUNTER,$FF
	db "Holly@",24,GASTLY,$FF
	db "Cindy@",22,GASTLY,$FF
	db "Grace@",24,GASTLY,$FF
	db "Rei@",22,MISDREAVUS,$FF
	db "Leah@",22,GASTLY,GASTLY,GASTLY,$FF
	db "Eve@",24,GASTLY,$FF
	db "Cassie@",24,GASTLY,$FF
	
ScientistData:
	db "Sheldone@",34,KOFFING,VOLTORB,$FF
	db "Ross@",26,GRIMER,WEEZING,KOFFING,WEEZING,$FF
	db "Mitch@",28,MAGNEMITE,VOLTORB,MAGNETON,$FF
	db "Jed@",29,ELECTRODE,WEEZING,$FF
	db "Marc@",33,ELECTRODE,$FF
	db "Hawking@",26,MAGNETON,KOFFING,WEEZING,MAGNEMITE,$FF
	db "Nick@",25,VOLTORB,KOFFING,MAGNETON,MAGNEMITE,KOFFING,$FF
	db "Emmett@",29,ELECTRODE,MUK,$FF
	db "Howie@",29,GRIMER,ELECTRODE,$FF
	db "Brian@",28,VOLTORB,KOFFING,MAGNETON,$FF
	db "Albert@",29,MAGNEMITE,KOFFING,$FF
	db "Justin@",33,MAGNEMITE,MAGNETON,VOLTORB,$FF
	db "Chris@",34,MAGNEMITE,ELECTRODE,$FF
	
RocketFData:
RocketData:
	db "Sqwaker@"
	db SPECIAL_TRAINER2
	db EXECUTIVE_F
	db AI_POTION
	
	db 15,RATTATA
	moveset BITE, QUICK_ATTACK, FOCUS_ENERGY, IRON_TAIL
	
	db 16,MURKROW
	moveset PECK, QUICK_ATTACK, WING_ATTACK, GROWL
	db $FF

	db "James@",CUSTOM_PIC,JAMES,13,KOFFING,$FF
	db "Jessie@",CUSTOM_PIC,JESSIE,13,EKANS,$FF
	db "Grunt@",14,RATICATE,$FF
	db "Grunt@",17,MACHOP,DROWZEE,$FF
	db "Grunt@",CUSTOM_PIC,PI_TRAINER,15,EKANS,ZUBAT,$FF ; Nugget Bridge "Boss"
	db "Grunt@",20,RATICATE,ZUBAT,$FF
	db "Rabbit@",21,DROWZEE,MACHOP,$FF
	db "Grunt@",21,RATICATE,RATICATE,$FF
	db "Misery@",20,GRIMER,KOFFING,KOFFING,$FF
	db "Grunt@",19,RATTATA,RATICATE,RATICATE,RATTATA,$FF
	db "Grunt@",22,GRIMER,KOFFING,$FF
	db "Grunt@",17,ZUBAT,KOFFING,GRIMER,ZUBAT,RATICATE,$FF
	db "Grunt@",20,RATTATA,RATICATE,DROWZEE,$FF
	db "Grunt@",21,MACHOP,MACHOP,$FF
	db "James@",CUSTOM_PIC,JAMES,23,WEEZING,WEEPINBELL,$FF ; James in Game Corner
	db "Jessie@",CUSTOM_PIC,JESSIE,23,ARBOK,LICKITUNG,$FF ; Jessie in Game Corner
	db "Grunt@",21,KOFFING,ZUBAT,$FF
	db "Grunt@",25,ZUBAT,ZUBAT,GOLBAT,$FF
	db "Grunt@",26,KOFFING,DROWZEE,$FF
	db "Executive@",CUSTOM_PIC,EXECUTIVE_M,23,HOUNDOUR,HONCHKROW,KOFFING,$FF
	db "Grunt@",26,DROWZEE,KOFFING,$FF
	db "Grunt@",29,CUBONE,ZUBAT,$FF
	db "Grunt@",25,GOLBAT,ZUBAT,ZUBAT,RATICATE,ZUBAT,$FF
	db "Misery@",28,RATICATE,HYPNO,RATICATE,$FF
	db "Grunt@",29,MACHOP,DROWZEE,$FF
	db "Grunt@",28,EKANS,ZUBAT,CUBONE,$FF
	db "Rabbit@",33,ARBOK,$FF
	db "Grunt@",33,HYPNO,$FF
	db "Grunt@",29,MACHOP,MACHOKE,$FF
	db "Grunt@",28,ZUBAT,ZUBAT,GOLBAT,$FF
	db "Misery@",26,RATICATE,ARBOK,KOFFING,GOLBAT,$FF
	db "Grunt@",29,CUBONE,CUBONE,$FF
	db "Grunt@",29,SANDSHREW,SANDSLASH,$FF
	db "Grunt@",26,RATICATE,ZUBAT,GOLBAT,RATTATA,$FF
	db "Grunt@",28,WEEZING,GOLBAT,KOFFING,$FF
	db "Grunt@",28,DROWZEE,GRIMER,MACHOP,$FF
	db "Rabbit@",28,GOLBAT,DROWZEE,HYPNO,$FF
	db "Grunt@",33,MACHOKE,$FF
	db "Grunt@",25,RATTATA,RATTATA,ZUBAT,RATTATA,EKANS,$FF
	db "Sqwaker@",CUSTOM_PIC,EXECUTIVE_M,34,CUBONE,DROWZEE,MAROWAK,$FF
	
AceTrainerMData:
	db "Aaron@",39,NIDORINO,NIDOKING,$FF
	db "Blake@",43,EXEGGUTOR,CLOYSTER,ARCANINE,$FF
	db "Brian@",43,KINGLER,TENTACRUEL,BLASTOISE,$FF
	db "Cody@",45,KINGLER,STARMIE,$FF
	db "Gaven@",42,IVYSAUR,WARTORTLE,CHARMELEON,CHARIZARD,$FF
	db "Jake@",44,IVYSAUR,WARTORTLE,CHARMELEON,$FF
	db "Danny@",49,NIDOKING,$FF
	db "Mike@",44,KINGLER,CLOYSTER,$FF
	db "Nick@",39,SANDSLASH,DUGTRIO,$FF
	db "Zoro@",43,RHYHORN,$FF
	
AceTrainerFData:
	db "Beth@",24,WEEPINBELL,GLOOM,IVYSAUR,$FF
	db "Lola@",43,BELLSPROUT,WEEPINBELL,VICTREEBEL,$FF
	db "Jenn@",43,PARASECT,DEWGONG,CHANSEY,$FF
	db "Quinn@",46,VILEPLUME,BUTTERFREE,$FF
	db "Irene@",44,PERSIAN,NINETALES,$FF
	db "Ivy@",45,IVYSAUR,VENUSAUR,$FF
	db "Lisa@",45,NIDORINA,NIDOQUEEN,$FF
	db "Anna@",43,PERSIAN,NINETALES,RAICHU,$FF
	
HexManiacData:
	db "Alice@",34,GASTLY,HAUNTER,$FF
	db "Luna@",38,HAUNTER,$FF
	db "Wanda@",33,GASTLY,GASTLY,HAUNTER,$FF

PkmnTrainerData:
    db "Flannery@"
	db SPECIAL_TRAINER2
	db FLANNERY ; pic
	db AI_FULL_RESTORE ; AI
	
	db 33,SLUGMA
	moveset FLAME_WHEEL, SMOG, LIGHT_SCREEN, HAZE
	
	db 33,SLUGMA
	moveset FLAMETHROWER, ROCK_SLIDE, LIGHT_SCREEN, HARDEN
	
	db 36,TORKOAL
	moveset FLAMETHROWER, BODY_SLAM, WITHDRAW, HEX
	db $FF
	
	
	
	db "Janine@"
	db SPECIAL_TRAINER2
	db JANINE ; pic
	db AI_X_ATTACK ; AI
	
	db 44,CROBAT
	moveset WING_ATTACK, CONFUSE_RAY, SUPERSONIC, SCREECH
	
	db 44,WEEZING
	moveset SLUDGE, SMOG, TOXIC, EXPLOSION
	
	db 45,VENOMOTH
	moveset TOXIC, PSYCHIC_M, DOUBLE_TEAM, SUPERSONIC
	db $FF
