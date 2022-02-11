local Dungeons = LibStub('AceAddon-3.0'):GetAddon('BestInSlotRedux'):NewModule('ShadowlandsDungeons')
local dungeonTierId = 90002
local tocVersion = select(1, GetBuildInfo())
local bonusIds = {
	bonusids = {
		[1] = {3524},
		[2] = {3524},
		[3] = {3524},
	--  [4] = {difficulty,6652,12/12aufwertungen,+ilvl,rarity}--M+
		[4] = {7359,6652,7401,1586,6646},--M+
		[5] = {6536,6652,1592,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 1, -- NHC
		[2] = 2, -- HC
		[3] = 23, -- Mythic
		[4] = 35, -- Mythic+
		[5] = 8, -- Great Vault
	},
}
local bonusIds_market = {
	bonusids = {
		[1] = {3524},
		[2] = {3524},
		[3] = {3524},
	--  [4] = {difficulty,6652,12/12aufwertungen,+ilvl,rarity}--M+
		[4] = {7359,6652,7401,1589,6646},--M+
		[5] = {6536,6652,1595,6646},--M+ Casino
	},
	difficultyconversion = {
		[1] = 1, -- NHC
		[2] = 2, -- HC
		[3] = 23, -- Mythic
		[4] = 35, -- Mythic+
		[5] = 8, -- Great Vault
	},
}


function Dungeons:NecroticWake()
  local necroticwake = "necroticwake"
  local name = C_Map.GetMapInfo(1666).name
  self:RegisterRaidInstance(dungeonTierId, necroticwake, name, bonusIds)
  --------------------------------------------------
  ----- Necrotic Wake
  --------------------------------------------------


  -----------------------------------
  ----- Blightbone
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2395)
  local lootTable = {
    178730, --Engorged Worm Smashwer
    178735, --Blight Belcher
    178732, --Abominable Visage
    178733, --Blightbone Spaulders
    178734, --Fused Bone Greatbelt
    178731, --Vicera-Stitched Footpads
    178736, --Stitchflesh's Misplaced Signet
  }
  self:RegisterBossLoot(necroticwake, lootTable, bossName)


  -----------------------------------
  ----- Amarth, The Harvester
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2391)
  local lootTable = {
    178737, --Amarth's Spellblade
    178738, --Rattling Deadeye Hood
    178740, --Reanimator's Mantle
    178741, --Risen Monstrosity Cuffs
    178739, --Legplates of Unholy Frenzy
    178742, --Bottled Flayedwing Toxin
  }
  self:RegisterBossLoot(necroticwake, lootTable, bossName)


  -----------------------------------
  ----- Surgeon Stitchflesh
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2392)
  local lootTable = {
    178743, --Stitchflesh's Scalpel
    178750, --Encrusted Canopic Lid
    178749, --Vile Butcher's Pauldrons
    178744, --Freshly Embalmed Jerkin
    178748, --Gory Surgeon's Gloves
    178745, --Striders of Restless Malice
    178772, --Satchel of Misbegotten Minions
    178751, --Spare Meat Hook
  }
  self:RegisterBossLoot(necroticwake, lootTable, bossName)


  -----------------------------------
  ----- Nalthor the Rimebinder
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2396)
  local lootTable = {
    178780, --Rimebinder's Runeblade
    178777, --Darkfrost Helmet
    178779, --Undying Chill Shoulderpads
    178782, --Necroplis Lord's Shackles
    178778, --Lichbone Legguards
    178781, --Ritual Commander's Ring
    178783, --Siphoning Phylactery Shard
  }
  self:RegisterBossLoot(necroticwake, lootTable, bossName)
end

function Dungeons:Plaguefall()
  local plaguefall = "plaguefall"
  local name = C_Map.GetMapInfo(1674).name
  self:RegisterRaidInstance(dungeonTierId, plaguefall, name, bonusIds)
  --------------------------------------------------
  ----- Plaguefall
  --------------------------------------------------


  -----------------------------------
  ----- Globgrog
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2419)
  local lootTable = {
    178753, --Surgical Pustule Extractor
    178760, --Digested Interrogator's Gaze
    178773, --Plague Handler's Greathelm
    178762, --Blightborne Chain Legguards
    178756, --Stradama's Misplaced Slippers
    178770, --Slimy Consumptive Organ
  }
  self:RegisterBossLoot(plaguefall, lootTable, bossName)


  -----------------------------------
  ----- Doctor Ickus
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2403)
  local lootTable = {
    178752, --Sophisticated Bonecracker
    178759, --Depraved Physician's Mask
    178763, --Malodorous Gristle-Sown Spaulders
    178767, --Tortured Assistant's Bindings
    178775, --Fleshfused Crushers
    178771, --Phial of Putrefaction
  }
  self:RegisterBossLoot(plaguefall, lootTable, bossName)


  -----------------------------------
  ----- Domina Venomblade
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2423)
  local lootTable = {
    178929, --Halbed of the Aranakk
    178928, --Domina's Oozing Shiv
    178934, --Fastened Venombarb Binds
    178930, --Mitts of Flawless Duplication
    178932, --Belth of Wretched manipulations
    178931, --Scarred Bloodbound Girdle
    178933, --Arachnid Cipher Ring
  }
  self:RegisterBossLoot(plaguefall, lootTable, bossName)


  -----------------------------------
  ----- Margrave Stradama
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2404)
  local lootTable = {
    178754, --Poxstorm, Longsword of Pestilence
    178764, --Plagueborne Shoulderguards
    178755, --Blighted Margrave's Cloak
    178757, --Gloves of Obscure Rituals
    178761, --Leggings of the Erudite Scholar
    178774, --Muckwallow Stompers
    178769, --Infinitely Divisible Ooze
  }
  self:RegisterBossLoot(plaguefall, lootTable, bossName)
end

function Dungeons:MistsofTirnaScithe()
  local mistsoftirnascithe = "mistsoftirnascithe"
  local name = C_Map.GetMapInfo(1669).name
  self:RegisterRaidInstance(dungeonTierId, mistsoftirnascithe, name, bonusIds)
  --------------------------------------------------
  ----- Mists of Tirna Scithe
  --------------------------------------------------


  -----------------------------------
  ----- Ingra Maloch
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2400)
  local lootTable = {
    178713, --Drustlord's Greateaxe
    178709, --Scithewood Scepter
    178692, --Soulthorn Visage
    178694, --Wrathbark Greathelm
    178696, --Ingra Maloch's Mantle
    178698, --Rainshadow Hauberk
	178704, --Deathshackle Wristwraps
	178700, --Clasp of Waning Shadow
	178708, --Unbound Changeling
  }
  self:RegisterBossLoot(mistsoftirnascithe, lootTable, bossName)


  -----------------------------------
  ----- Mistcaller
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2402)
  local lootTable = {
    178710, --Tanglewood Thorn
    178691, --Hood of the Hidden Path
    178707, --Trailspinner Pendant
    178697, --Prankster's Pauldrons
    178695, --Wintersnap Shoulderguards
    178706, --Fogweaver Gauntlets
	178705, --Tricksprite Gloves
	178715, --Mistcaller Ocarina
  }
  self:RegisterBossLoot(mistsoftirnascithe, lootTable, bossName)


  -----------------------------------
  ----- Tred'ova
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2405)
  local lootTable = {
    178714, --Lakali's Spire of Knowledge
    178711, --Axe of the Deadgrove
    178712, --Acidslough Bulwark
    178693, --Cocoonsilk Cowl
    178702, --Bands of the Undergrowth
    178703, --Hiveswarm Bracers
    178699, --Sapgorger Belth
	178701, --Gormshell Greaves
  }
  self:RegisterBossLoot(mistsoftirnascithe, lootTable, bossName)
end

function Dungeons:HallsofAtonement()
  local hallsofatonement = "hallsofatonement"
  local name = C_Map.GetMapInfo(1663).name
  self:RegisterRaidInstance(dungeonTierId, hallsofatonement, name, bonusIds)
  --------------------------------------------------
  ----- Halls of Atonement
  --------------------------------------------------


  -----------------------------------
  ----- Halkias, the Sin-Stained Goliath
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2406)
  local lootTable = {
    178817, --Hood of Refracted Shadows
    178827, --Sin Stained Pendant
    178813, --Sinlight Shroud
    178818, --Halkias's Towering Pillars
    178830, --Shardskin Sabatons
  }
  self:RegisterBossLoot(hallsofatonement, lootTable, bossName)


  -----------------------------------
  ----- Echelon
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2387)
  local lootTable = {
    178834, --Stoneguardian's Morningstar
    178812, --Wing COmmander's Helmet
    178815, --Soaring Decimator's Hauberk
    178833, --Stonefiend Shaper's Mitts
    178819, --Skyterror's Stonehide Leggings
    178825, --Pulsating Stoneheart
  }
  self:RegisterBossLoot(hallsofatonement, lootTable, bossName)


  -----------------------------------
  ----- High Adjudicator Aleez
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2411)
  local lootTable = {
    178828, --Nathrian Tabernacle
    178821, --Mantle of Ephemeral Visages
    178814, --Breastplate of Otherworldly Influence
    178832, --Gloves of Haunting Fixation
    178822, --Cord of the Dark Word
    178826, --Sunblood Amethyst
  }
  self:RegisterBossLoot(hallsofatonement, lootTable, bossName)


  -----------------------------------
  ----- Lord Chamberlain
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2413)
  local lootTable = {
    178829, --Nathrian Ferula
    178816, --Nathrian Usurper's Mask
    178820, --Pauldrons of Unleasehed Pride
    178823, --Waistcord of Dark Devotion
    178831, --SLippers of Leavened Station
    178824, --Signet of the False Accuser
  }
  self:RegisterBossLoot(hallsofatonement, lootTable, bossName)
end

function Dungeons:TheaterofPain()
  local theaterofpain = "theaterofpain"
  local name = C_Map.GetMapInfo(1683).name
  self:RegisterRaidInstance(dungeonTierId, theaterofpain, name, bonusIds)
  --------------------------------------------------
  ----- Theater of Pain
  --------------------------------------------------


  -----------------------------------
  ----- An Affront of Challengers
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2397)
  local lootTable = {
    178866, --Dessia's Decimating Decapitator
    178799, --Amphitheater Stalker's Hood
    178803, --Plague-Licked Amice
    178795, --Vest of Concealed Secrets
    178800, --Galvanized Oxxein Legguards
	178871, --Bloodoath Signet
	178810, --Vial of Spectral Essence
  }
  self:RegisterBossLoot(theaterofpain, lootTable, bossName)


  -----------------------------------
  ----- Gorechop
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2401)
  local lootTable = {
    178793, --Abdominal Securing Chestguard
    178806, --Contaminated Gauze Wristwraps
    178798, --Grips of OVerwhelming Beatings
    178869, --Fleshfused Circle
    178808, --Viscera of Coalesced Hatred
  }
  self:RegisterBossLoot(theaterofpain, lootTable, bossName)


  -----------------------------------
  ----- Xav the Unfallen
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2390)
  local lootTable = {
    178865, --Xav's Pike of Authority
    178789, --Fleshcrafter's Knife
    178864, --Gorebound Predator's Gavel
    178863, --Gorestained Cleaver
    178794, --Triumphant Combatatnt's Chainmail
    178807, --Pit FFighter's Wristguards
	178801, --Fearless Challenger's Leggings
  }
  self:RegisterBossLoot(theaterofpain, lootTable, bossName)


  -----------------------------------
  ----- Kul'Tharok
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2389)
  local lootTable = {
    178792, --Soulswen Vestments
    178805, --Girdle of Shattered Dreams
    178796, --Boots of Shuddering Matter
    178870, --Ritual Bone Band
    178809, --Soulletting Ruby
  }
  self:RegisterBossLoot(theaterofpain, lootTable, bossName)

  -----------------------------------
  ----- Mordretha, the Endless Empress
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2417)
  local lootTable = {
    178867, --Barricade of the Endless Empire
    178868, --Deathwalker's Promise
    178802, --Unyielding Combatatn's Pauldrons
    178804, --Fallen Empress's Cord
    178797, --Vanquished Usurper's Footpads
    178872, --Ring of Perpetual Conflict
	178811, --Grim Codex
  }
  self:RegisterBossLoot(theaterofpain, lootTable, bossName)
end

function Dungeons:DeOtherSide()
  local deotherside = "deotherside"
  local name = C_Map.GetMapInfo(1679).name
  self:RegisterRaidInstance(dungeonTierId, deotherside, name, bonusIds)
  --------------------------------------------------
  ----- De Other Side
  --------------------------------------------------


  -----------------------------------
  ----- Hakkar the Soulflayer
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2408)
  local lootTable = {
    179330, --Zin'khas, Blade of the Fallen God
    179328, --Bloodspiller
    179325, --Hakkari Revenant's Grips
    179326, --Girdle of the Soulflayer
    179324, --Soulfeather Breeches
	179322, --Windscale Moccasins
	179331, --Blood-Spattered Scale
  }
  self:RegisterBossLoot(deotherside, lootTable, bossName)


  -----------------------------------
  ----- The Manastorms
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2409)
  local lootTable = {
    179339, --Whizblast Walking Stick
    179340, --Supercollider
    179335, --Manastorm's Magnificent Threads
    179336, --Rocket Chicken Handlers
    179337, --Techno-Coil Legguards
    179338, --Dynamo Doomstompers
	179342, --Overwhelming Power Crystal
  }
  self:RegisterBossLoot(deotherside, lootTable, bossName)


  -----------------------------------
  ----- Dealer Xy'exa
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2398)
  local lootTable = {
    179347, --Collector's Pulse Staff
    179348, --Xy Cartel Crossbow
    179344, --Far Traveler's Shoulderpads
    179349, --Dealer Xy'exa's Cape
    179346, --Breastplate of Fatal Contrivances
    179343, --Sash of Exquisite Acquisitions
	179345, --Spatial Rift Striders
	179350, --Inscrutable Quantum Device
  }
  self:RegisterBossLoot(deotherside, lootTable, bossName)


  -----------------------------------
  ----- Mueh'zala
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2410)
  local lootTable = {
    179353, --Harness of Twisted Whims
    179354, --Reality-Shatter Vambraces
    179351, --Mueh'zala's Hexthread Sarong
    179352, --Primeval Soul's Ankleguards
    179355, --Death God's Signet
    179356, --Shadowgrasp Totem
  }
  self:RegisterBossLoot(deotherside, lootTable, bossName)
end

function Dungeons:SpiresofAscension()
  local spiresofascension = "spiresofascension"
  local name = C_Map.GetMapInfo(1693).name
  self:RegisterRaidInstance(dungeonTierId, spiresofascension, name, bonusIds)
  --------------------------------------------------
  ----- Spires of Ascension
  --------------------------------------------------


  -----------------------------------
  ----- Kin-Tara
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2399)
  local lootTable = {
    180097, --Quarterstaff of Discordant Ethic
    180115, --Azure-Venom Choker
    180100, --Forswworn Stalker's Hauberk
    180103, --Winged Hunters' Gloves
    180109, --Kin-Tara's Baleful Cord
	180101, --Warboots of Ruthless Conviction
  }
  self:RegisterBossLoot(spiresofascension, lootTable, bossName)


  -----------------------------------
  ----- Ventunax
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2416)
  local lootTable = {
    180095, --Pentinet Edge
    180104, --Distoreded Construct's Gauntlets
    180110, --Dark Praetorian's Clasp
    180111, --Shadowhril Waistwrap
    180102, --Dark Stride Footwraps
    180116, --Overcharged Anima Battery
  }
  self:RegisterBossLoot(spiresofascension, lootTable, bossName)


  -----------------------------------
  ----- Oryphrion
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2414)
  local lootTable = {
    180112, --The Philosopher
    180106, --Vicious Surgefaceguard
    180113, --Thunderous Echo Vambraces
    180105, --Absonant Construct's Handguards
    180107, --Purge Protocol Legwraps
    180118, --Anima Field Emitter
	180117, --Empyreal Ordnance
  }
  self:RegisterBossLoot(spiresofascension, lootTable, bossName)


  -----------------------------------
  ----- Devos, Paragon of Doubt
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2412)
  local lootTable = {
    180096, --Devos's Cacophonous Poleaxe
    180123, --Drape of Twisted Loyalties
    180099, --Breastplate of Brutal Dissonance
    180098, --Sinister REquiem Vestments
    180114, --Fallen Paragon's Armguards
    180108, --Abyssal Disharmony Breeches
	180119, --Boon of the Archon
  }
  self:RegisterBossLoot(spiresofascension, lootTable, bossName)
end

function Dungeons:SanguineDepths()
  local sanguinedebpths = "sanguinedebpths"
  local name = C_Map.GetMapInfo(1675).name
  self:RegisterRaidInstance(dungeonTierId, sanguinedebpths, name, bonusIds)
  --------------------------------------------------
  ----- Sanquinte Depths
  --------------------------------------------------


  -----------------------------------
  ----- Kryxis the Voracious
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2388)
  local lootTable = {
    178854, --Hungering Devourer's Twinblade
    178853, --Voracious Gorger Spine
    178835, --Anima-Splattered Hide
    178844, --Essence Surge Binders
    178846, --Shackles of Alluring Vitality
	178836, --Sabatons of the Rushing Juggernaut
	178848, --Entwined Gorger Tendril
  }
  self:RegisterBossLoot(sanguinedebpths, lootTable, bossName)


  -----------------------------------
  ----- Executor Tarvold
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2415)
  local lootTable = {
    178855, --Sinsmasher
    178859, --Castigator's Mantle
    178851, --Cloak of Enveloping Manifestations
    178845, --Vambraces of the Depraved Warden
    178843, --Executor's Prideful Girdle
    178837, --Sinsoaked Waders
	178849, --Overflowing Anima Cage
  }
  self:RegisterBossLoot(sanguinedebpths, lootTable, bossName)


  -----------------------------------
  ----- Grand Proctor Beryllia
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2421)
  local lootTable = {
    178852, --Vessel of Shining Radiance
    178847, --Radiant Light Binders
    178841, --Iron SPiked Handgrips
    178842, --Waistguard of Expurged Anguish
    178838, --Beryllia's Leggings of Endless Torment
    178850, --Lingering Sunmote
  }
  self:RegisterBossLoot(sanguinedebpths, lootTable, bossName)


  -----------------------------------
  ----- General Kaal
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2407)
  local lootTable = {
    178856, --Kaal's Gloomblade
    178857, --Stone General's Edge
    178860, --Cowl of the Devoted General
    178858, --Wicked Bladewing Pauldrons
    178840, --Guilewind Stone Talons
    178839, --Wind Dancer's Legguards
	178862, --Bladedancer's Armor Kit
	178861, --Decanter of Anima-Charged Winds
  }
  self:RegisterBossLoot(sanguinedebpths, lootTable, bossName)
end

if tocVersion >= "9.1.0" then
	function Dungeons:TazaveshtheVeiledMarket()
	  local tazaveshtheveiledmarket = "tazaveshtheveiledmarket"
	  local name = C_Map.GetMapInfo(1990).name
	  self:RegisterRaidInstance(dungeonTierId, tazaveshtheveiledmarket, name, bonusIds_market)
	  --------------------------------------------------
	  ----- Tazavesh, the Veiled Market
	  --------------------------------------------------


	  -----------------------------------
	  ----- Zo'phex the Sentinel
	  -----------------------------------
		local bossName = EJ_GetEncounterInfo(2437)
		local lootTable = {
			183468, --Born Anew
			183498, --Cloaked in Shadows
			182110, --Crippling Hex
			182330, --Demonic Parole
			181962, --Mental Recovery
			182338, --Pure Concentration
			181841, --Reinforced Shell
			185824, --Blade of Grievous Harm
			185780, --Interrogator's Flensing Blade
			185816, --Confiscated Bracers of Concealment
			185815, --Vambraces of Verification
			185793, --Cyphered Gloves
			185791, --Knuckle-Dusting Handwraps
		}
		self:RegisterBossLoot(tazaveshtheveiledmarket, lootTable, bossName)


	  -----------------------------------
	  ----- The Grand Menagerie
	  -----------------------------------
		local bossName = EJ_GetEncounterInfo(2454)
		local lootTable = {
			184587, --Ambuscade
			181512, --Dizzying Tumble
			181756, --Incantation of Swiftness
			181469, --Indelible Victory
			183044, --Kilrogg's Cunning
			181836, --Spirit Drain
			185777, --Fang of Alcruux
			185821, --Gluttonous Rondel
			185814, --Auctioneer's Counting Bracers
			185792, --Achillite's Unbreakable Grip
			185794, --Gavel Pounders
			185809, --Venza's Powderbelt
			185840, --Seal of the Panoply
		}
		self:RegisterBossLoot(tazaveshtheveiledmarket, lootTable, bossName)


	  -----------------------------------
	  ----- Mailroom Mayhem
	  -----------------------------------
		local bossName = EJ_GetEncounterInfo(2436)
		local lootTable = {
			182584, --Cheetah's Vigor
			181837, --Clear Mind
			182461, --Echoing Blessings
			186534, --Gizmo
			182325, --Ravenous Consumption
			183497, --Recuperator
			183465, --Ursine Vigor
			185811, --Package Protector
			185817, --Bracers of Autonomous Classification
			185808, --Discount Mail-Order Belt
			185807, --Pan-Dimensional Packing Cord
			185787, --Implacable Weatherproof Treads
			185845, --First Class Healing Distributor
			185846, --Miniscule Mailemental in an Envelope
			185844, --Ticking Sack of Terror
		}
		self:RegisterBossLoot(tazaveshtheveiledmarket, lootTable, bossName)


	  -----------------------------------
	  ----- Myza's Oasis
	  -----------------------------------
		local bossName = EJ_GetEncounterInfo(2452)
		local lootTable = {
			182460, --Accrued Vitality
			183470, --Born of the Wilds
			182656, --Disturb the Peace
			181508, --Fortifying Ingredients
			182106, --Refreshing Waters
			181464, --Winter's Protection
			185783, --Yasahm the Riftbreaker
			185812, --Acoustically Alluring Censer
			185842, --Ornately Engraved Amplifier
			185802, --Breakbeat Shoulderguards
			185804, --Harmonious Spaulders
			185806, --Improvisational Cinch
			185789, --Sabatons of Measured Time
		}
		self:RegisterBossLoot(tazaveshtheveiledmarket, lootTable, bossName)


	  -----------------------------------
	  ----- So'azmi
	  -----------------------------------
		local bossName = EJ_GetEncounterInfo(2451)
		local lootTable = {
			181707, --Diverted Energy
			182449, --Resolute Barrier
			182605, --Tactical Retreat
			181826, --Translucent Image
			182132, --Unending Grip
			182318, --Viscous Ink
			185778, --First Fist of the So Cartel
			185843, --Duplicating Drape
			185782, --Robes of Midnight Bargains
			185786, --So'azmi's Fractal Vest
			185800, --Orbitwarp Culottes
			185798, --Quantum Leapers
			185836, --Codex of the First Technique
		}
		self:RegisterBossLoot(tazaveshtheveiledmarket, lootTable, bossName)


	  -----------------------------------
	  ----- Hylbrande
	  -----------------------------------
		local bossName = EJ_GetEncounterInfo(2448)
		local lootTable = {
			182105, --Astral Protection
			180943, --Cacophonous Roar
			182336, --Golden Path
			181373, --Harm Denial
			183501, --Rushed Setup
			183467, --Tireless Pursuit
			185810, --Skyreaver, Greataxe of the Keepers
			185779, --Spire of Expurgation
			185805, --Hylbrande's Retrofitted Shoulderguards
			185803, --Stoneflesh Spaulders
			185781, --Drape of Titanic Dreams
			185788, --Codebreaker's Cunning Sandals
			185790, --Treads of Titanic Deconversion
		}
		self:RegisterBossLoot(tazaveshtheveiledmarket, lootTable, bossName)


	  -----------------------------------
	  ----- Timecap'n Hooktail
	  -----------------------------------
		local bossName = EJ_GetEncounterInfo(2449)
		local lootTable = {
			181498, --Grounding Surge
			181975, --Hardened Bones
			183502, --Prepared for All
			182469, --Rejuvenating Wind
			182466, --Shade of Terror
			180842, --Stalwart Guardian
			185823, --Fatebreaker, Destroyer of Futures
			185841, --Timetwister Tulwar
			185795, --Cowl of Branching Fate
			185796, --Dragonbane Diadem
			185776, --Hooktail's Commanding Gaze
			185797, --Rakishly Tipped Tricorne
			185820, --Cabochon of the Infinite Flight
		}
		self:RegisterBossLoot(tazaveshtheveiledmarket, lootTable, bossName)


	  -----------------------------------
	  ----- So'leah
	  -----------------------------------
		local bossName = EJ_GetEncounterInfo(2455)
		local lootTable = {
			186638, --Cartel Master's Gearglider Mount
			181838, --Charitable Soul
			182304, --Divine Call
			182316, --Fel Defender
			183466, --Innate Resolve
			181510, --Lingering Numbness
			182480, --Reversal of Fortune
			182109, --Totemic Surge
			185822, --Staff of Fractured Spacetime
			185819, --Event Horizon's Edge
			185785, --Embrace of the Relicbinder
			185784, --Novaburst Warplate
			185801, --Anomalous Starlit Breeches
			185799, --Hyperlight Leggings
			185813, --Signet of Collapsing Stars
			185818, --So'leah's Secret Technique
		}
		self:RegisterBossLoot(tazaveshtheveiledmarket, lootTable, bossName)
	end
end

function Dungeons:InitializeZoneDetect(ZoneDetect)
  local necroticwake = "necroticwake"
  ZoneDetect:RegisterMapID(1666, necroticwake)
  ZoneDetect:RegisterNPCID(166880, necroticwake, 1)
  ZoneDetect:RegisterNPCID(163157, necroticwake, 2)
  ZoneDetect:RegisterNPCID(166882, necroticwake, 3)
  ZoneDetect:RegisterNPCID(166945, necroticwake, 4)

  local plaguefall = "plaguefall"
  ZoneDetect:RegisterMapID(1674, plaguefall)
  ZoneDetect:RegisterNPCID(164255, plaguefall, 1)
  ZoneDetect:RegisterNPCID(164967, plaguefall, 2)
  ZoneDetect:RegisterNPCID(164266, plaguefall, 3)
  ZoneDetect:RegisterNPCID(164267, plaguefall, 4)

  local mistsoftirnascithe = "mistsoftirnascithe"
  ZoneDetect:RegisterMapID(1669, mistsoftirnascithe)
  ZoneDetect:RegisterNPCID(164567, mistsoftirnascithe, 1)
  ZoneDetect:RegisterNPCID(170217, mistsoftirnascithe, 2)
  ZoneDetect:RegisterNPCID(164517, mistsoftirnascithe, 3)

  local hallsofatonement = "hallsofatonement"
  ZoneDetect:RegisterMapID(1663, hallsofatonement)
  ZoneDetect:RegisterNPCID(165408, hallsofatonement, 1)
  ZoneDetect:RegisterNPCID(156827, hallsofatonement, 2)
  ZoneDetect:RegisterNPCID(165410, hallsofatonement, 3)
  ZoneDetect:RegisterNPCID(164218, hallsofatonement, 4)

  local theaterofpain = "theaterofpain"
  ZoneDetect:RegisterMapID(1683, theaterofpain)
  ZoneDetect:RegisterNPCID(164451, theaterofpain, 1)
  ZoneDetect:RegisterNPCID(162317, theaterofpain, 2)
  ZoneDetect:RegisterNPCID(162329, theaterofpain, 3)
  ZoneDetect:RegisterNPCID(162309, theaterofpain, 4)
  ZoneDetect:RegisterNPCID(165946, theaterofpain, 5)

  local theaterofpain = "deotherside"
  ZoneDetect:RegisterMapID(1679, deotherside)
  ZoneDetect:RegisterNPCID(166473, deotherside, 1)
  ZoneDetect:RegisterNPCID(101976, deotherside, 2)
  ZoneDetect:RegisterNPCID(164450, deotherside, 3)
  ZoneDetect:RegisterNPCID(169769, deotherside, 4)

  local spiresofascension = "spiresofascension"
  ZoneDetect:RegisterMapID(1693, spiresofascension)
  ZoneDetect:RegisterNPCID(162059, spiresofascension, 1)
  ZoneDetect:RegisterNPCID(162058, spiresofascension, 2)
  ZoneDetect:RegisterNPCID(162060, spiresofascension, 3)
  ZoneDetect:RegisterNPCID(167410, spiresofascension, 4)

  local sanguinedebpths = "sanguinedebpths"
  ZoneDetect:RegisterMapID(1675, sanguinedebpths)
  ZoneDetect:RegisterMapID(162100, sanguinedebpths, 1)
  ZoneDetect:RegisterNPCID(162103, sanguinedebpths, 2)
  ZoneDetect:RegisterNPCID(162102, sanguinedebpths, 3)
  ZoneDetect:RegisterNPCID(165318, sanguinedebpths, 4)

  if tocVersion >= "9.1.0" then
	  local tazaveshtheveiledmarket = "tazaveshtheveiledmarket"
	  ZoneDetect:RegisterMapID(1990, tazaveshtheveiledmarket)
	  ZoneDetect:RegisterMapID(175616, tazaveshtheveiledmarket, 1)
	  ZoneDetect:RegisterNPCID(176556, tazaveshtheveiledmarket, 2)
	  ZoneDetect:RegisterNPCID(175646, tazaveshtheveiledmarket, 3)
	  ZoneDetect:RegisterNPCID(176564, tazaveshtheveiledmarket, 4)
	  ZoneDetect:RegisterNPCID(175806, tazaveshtheveiledmarket, 5)
	  ZoneDetect:RegisterNPCID(175663, tazaveshtheveiledmarket, 6)
	  ZoneDetect:RegisterNPCID(175546, tazaveshtheveiledmarket, 7)
	  ZoneDetect:RegisterNPCID(178433, tazaveshtheveiledmarket, 8)
  end
end

function Dungeons:OnEnable()
  self:RegisterExpansion("Shadowlands", EXPANSION_NAME8)
  self:RegisterRaidTier("Shadowlands", dungeonTierId, ("%s %s"):format(EXPANSION_NAME8, TRACKER_HEADER_DUNGEON), PLAYER_DIFFICULTY1, PLAYER_DIFFICULTY2, PLAYER_DIFFICULTY6, PLAYER_DIFFICULTY6.."+",  PLAYER_DIFFICULTY6.."+ Casino")

  self:NecroticWake()
  self:Plaguefall()
  self:MistsofTirnaScithe()
  self:HallsofAtonement()
  self:TheaterofPain()
  self:DeOtherSide()
  self:SpiresofAscension()
  self:SanguineDepths()
	
  if tocVersion >= "9.1.0" then
	self:TazaveshtheVeiledMarket()
  end
end
