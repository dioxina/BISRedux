local SepulcherRaid = LibStub("AceAddon-3.0"):GetAddon("BestInSlotRedux"):NewModule("SepulcherRaid")
local Sepulcher = "Sepulcher"
local playername, realm = UnitFullName("player")
local realm = GetNormalizedRealmName()
local tocVersion = select(1, GetBuildInfo())
if tocVersion >= "9.2.0" then
function SepulcherRaid:OnEnable()
	--local L = LibStub("AceLocale-3.0"):GetLocale("BestInSlotRedux")

	local sepulcherName = C_Map.GetMapInfo(2047).name
	self:RegisterExpansion("Shadowlands", EXPANSION_NAME8)
	self:RegisterRaidTier("Shadowlands", 90200, sepulcherName, PLAYER_DIFFICULTY1, PLAYER_DIFFICULTY2, PLAYER_DIFFICULTY6)
	self:RegisterRaidInstance(90200, Sepulcher, sepulcherName, {
		bonusids = {
		[1] = {7189,1472},
		[2] = {7188,1485},
		[3] = {7187,1498},
		},
		difficultyconversion = {
		[1] = 3, --Raid Normal
		[2] = 5, --Raid Heroic
		[3] = 6, --Raid Mythic
		}
	})
	--------------------------------------------------
	----- Sepulcher of the First Ones
	--------------------------------------------------


	-----------------------------------
	----- Vigilant Guardian
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2458) 
	local lootTable = { 
		183402, --Bloodletting 
		182126, --High Voltage 
		181734, --Magi's Brand 
		183505, --Maim, Mangle 
		180944, --Merciless Bonegrinder 
		182622, --Resplendent Light 
		182736, --Rolling Agony 
		181843, --Shining Radiance 
		183479, --Umbral Intensity 
		181742, --Walk with the Ox 
		189779, --Key to the Immortal Hearth 
		189584, --Sepulcher's Savior 
		189775, --Helm of Solemn Vigil 
		189774, --Fractured Colossus Core 
		189777, --Unstable Giant's Cuffs 
		189776, --Girdle of the First Gate 
		189771, --Ancient Materium Tassets 
		189778, --Legplates of the Slumbering Sentinel 
		189770, --Pre-Fabricated Footpads 
		189772, --Modified Defense Grid 
		188273, --Auxillary Attendant Chime 
	} 
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	-----------------------------------
	----- Skolex, the Insatiable Ravener
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2465) 
	local lootTable = { 
		181838, --Charitable Soul 
		182110, --Crippling Hex 
		182383, --Dancing with Fate 
		181980, --Embrace Death 
		181508, --Fortifying Ingredients 
		182336, --Golden Path 
		181469, --Indelible Victory 
		183502, --Prepared for All 
		182466, --Shade of Terror 
		183167, --Strength of the Pack 
		183484, --Unchecked Aggression 
		189817, --Rift-Scarred Solcrusher 
		189816, --Crystallized Viscera Spike 
		189819, --Assimilated Safeguard 
		189810, --Ephemera-Softened Exoskeleton 
		189814, --Gluttonous Gardbrace 
		189813, --Mantle of the Broken Beast 
		189815, --Lurking Predator's Camouflage 
		189812, --Devourer's Sandblown Hidebinders 
		189809, --Skolex's Ravenous Skinguards 
		189811, --Infinitely Collapsing Coil 
		188267, --Bells of the Endless Feast 
	}
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	-----------------------------------
	----- Artificer Xy'mox
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2470) 
	local lootTable = { 
		182128, --Call of Flame 
		180935, --Crash the Ramparts 
		182667, --Focused Light 
		182743, --Focused Malignancy 
		181756, --Incantation of Swiftness 
		183506, --Lethal Poisons 
		181844, --Pain Transformation 
		182469, --Rejuvenating Wind 
		181836, --Spirit Drain 
		183488, --Unstoppable Growth 
		189829, --Forerunner's Relic Blade 
		189830, --Replicated Relic Blade 
		189828, --Xy Captain's Crossbow 
		189827, --Cartel Xy's Proof of Initiation 
		189822, --Imported Illidari Spaulders 
		189826, --Enforcer's Containment Cinch 
		189825, --Veiled Auctioneer's Vambraces 
		189824, --Unlicensed Hyperlight Handlers 
		189821, --Illicit Artifact Holster 
		189823, --Stolen Nathrian Slippers 
		188265, --Cache of Acquired Treasures 
		188266, --Pulsating Riftshard 
	} 
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	-----------------------------------
	----- Dausegne, the Fallen Oracle
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2459) 
	local lootTable = { 
		183510, --Count the Odds 
		181942, --Focused Mending 
		181504, --Infernal Cascade 
		181495, --Jade Bond 
		182677, --Punish the Guilty 
		182648, --Sharpshooter's Focus 
		182471, --Soul Furnace 
		182751, --Tyrant's Soul 
		182134, --Unruly Winds 
		181776, --Vicious Contempt 
		181866, --Withering Plague 
		189807, --Discordant Deathblade 
		189788, --Maestro's Malice 
		189790, --Final Forte 
		189787, --Dausegne's Dissonant Halo 
		189784, --Epaulets of the Ailing Aria 
		189791, --Drape of Mournful Melodies 
		189782, --Haunting Hymnal Robes 
		189785, --Oracle's Chromatic Cuirass 
		189773, --Clasp of Crooked Crescendos 
		189793, --Sash of the Silent Sonata 
		189786, --Song-Mad Sabatons 
		188272, --Resonant Reservoir 
	} 
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	-----------------------------------
	----- Prototype Pantheon
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2460) 
	local lootTable = { 
		181770, --Bone Marrow Hops 
		182706, --Brooding Pool 
		182292, --Brutal Grasp 
		182962, --Catastrophic Origin 
		183473, --Conflux of Elements 
		181974, --Courageous Ascension 
		183471, --Deep Allegiance 
		182651, --Destructive Reverberations 
		181539, --Discipline of the Grove 
		182345, --Elysian Dirge 
		182331, --Empowered Release 
		183474, --Endless Thirst 
		182321, --Enfeebled Mark 
		182347, --Essential Extraction 
		183472, --Evolved Swarm 
		182129, --Fae Fermata 
		182961, --Fatal Decimation 
		181981, --Festering Transfusion 
		181553, --Gift of the Lich 
		182777, --Hallowed Discernment 
		182463, --Harrowing Punishment 
		181774, --Imbued Reflections 
		182288, --Impenetrable Gloom 
		182685, --Increased Scrutiny 
		181600, --Ire of the Ascended 
		183495, --Lashing Scars 
		182348, --Lavish Harvest 
		182339, --Necrotic Barrage 
		182440, --Piercing Verdict 
		182295, --Proliferation 
		182646, --Repeat Decree 
		183492, --Reverberation 
		182770, --Righteous Might 
		182778, --Ringing Clarity 
		183494, --Septic Shock 
		182130, --Shattered Perceptions 
		181639, --Siphoned Malice 
		182964, --Soul Eater 
		182960, --Soul Tithe 
		182335, --Spirit Attunement 
		181759, --Strike with Clarity 
		183493, --Sudden Fractures 
		182767, --The Long Summer 
		182346, --Tumbling Waves 
		183463, --Unnatural Malice 
		182442, --Veteran's Repute 
		181775, --Way of the Fae 
		183199, --Withering Ground 
		189799, --Elysia's Promise 
		189800, --Prelude to Pride 
		189789, --Pursuit of Victory 
		189783, --Sin-Steeped Coronet 
		189796, --Duty's Ascendant Breastplate 
		189797, --Wristwraps of Night's Renewal 
		189794, --Boots of Ceaseless Conflict 
		189798, --Moccasins of Dreadful Absolution 
		189795, --Winter's Stampeding Striders 
		188270, --Elegy of the Eternals 
		188271, --The First Sigil 
	} 
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	-----------------------------------
	----- Lihuvim, Principal Architect
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2461) 
	local lootTable = { 
		182755, --Ashen Remains 
		181435, --Calculated Strikes 
		182140, --Dissonant Echoes 
		181982, --Everfrost 
		181455, --Icy Propulsion 
		183512, --Planned Execution 
		182624, --Show of Force 
		183482, --Sudden Ambush 
		182143, --Swirling Currents 
		182608, --Virtuous Command 
		189754, --Genesis Lathe 
		189808, --Lihuvim's Severing Scalpel 
		189801, --Ephemera-Charged Thinking Cap 
		189805, --Bracers of the Inscrutable Inventor 
		188881, --Caress of the Empyrean 
		188845, --Erudite Occultist's Handwraps 
		188863, --Gauntlets of the First Eidolon 
		188861, --Godstalker's Gauntlets 
		188890, --Grasps of the Demon Star 
		188937, --Grasps of the Infinite Infantry 
		188916, --Grips of the Grand Upwelling 
		188853, --Handwraps of the Fixed Stars 
		188928, --Luminous Chevalier's Gauntlets 
		188898, --Mercurial Punisher's Grips 
		188907, --Soulblade Grasps 
		188925, --Theurgic Starspeaker's Runebindings 
		189804, --Combustible Collaboration Girdle 
		189803, --Automa-Tender's Tights 
		189802, --Loquacious Keeper's Peridot 
		188268, --Architect's Ingenuity Core 
		188269, --Pocket Protoforge 
	} 
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	-----------------------------------
	----- Halondrus the Reclaimer
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2463) 
	local lootTable = { 
		182748, --Borne of Blood 
		181712, --Depths of Insanity 
		183478, --Fury of the Skies 
		182137, --Magma Fist 
		182187, --Meat Shield 
		181511, --Nether Precision 
		182621, --One With the Beast 
		182325, --Ravenous Consumption 
		181944, --Resonant Words 
		181700, --Scalding Brew 
		183507, --Triple Threat 
		189834, --Guardstaff of the Great Cycle 
		189806, --Lightshatter Hatchet 
		189781, --Obscured Fractal Prism 
		188866, --Chausses of the First Eidolon 
		188842, --Erudite Occultist's Leggings 
		188860, --Godstalker's Tassets 
		188887, --Leggings of the Demon Star 
		188878, --Leggings of the Empyrean 
		188848, --Leggings of the Fixed Stars 
		188911, --Legguards of the Grand Upwelling 
		188940, --Legplates of the Infinite Infantry 
		188931, --Luminous Chevalier's Robes 
		188893, --Mercurial Punisher's Breeches 
		188902, --Soulblade Leggings 
		188924, --Theurgic Starspeaker's Tassets 
		189831, --Ephemera-Stained Sollerets 
		189832, --Greatboots of the Roaming Goliath 
		189833, --Taciturn Keeper's Lapis 
		188264, --Earthbreaker's Impact 
		188263, --Reclaimer's Intensity Core 
	} 
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	-----------------------------------
	----- Anduin Wrynn
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2469) 
	local lootTable = { 
		181848, --Accelerated Cold 
		182769, --Combusting Engine 
		183197, --Controlled Destruction 
		182142, --Embrace of Earth 
		180932, --Fueled by Violence 
		181737, --Nourishing Chi 
		183514, --Perforated Veins 
		182686, --Powerful Precision 
		183480, --Taste for Blood 
		182681, --Vengeful Shock 
		188880, --Amice of the Empyrean 
		188910, --Crown of the Grand Upwelling 
		188844, --Erudite Occultist's Hood 
		188942, --Gaze of the Infinite Infantry 
		188859, --Godstalker's Sallet 
		188847, --Headpiece of the Fixed Stars 
		188889, --Horns of the Demon Star 
		188933, --Luminous Chevalier's Casque 
		188892, --Mercurial Punisher's Hood 
		188901, --Soulblade Guise 
		188923, --Theurgic Starspeaker's Howl 
		188868, --Visage of the First Eidolon 
		189838, --Beacon of Stormwind 
		189835, --Anduin's Princely Vestments 
		189836, --Wrists of the Wicked Star 
		189837, --King's Wolfheart Waistband 
		189840, --Remnant's Blasphemous Scourgebelt 
		189841, --Soulwarped Seal of Menethil 
		189839, --Soulwarped Seal of Wrynn 
		188262, --The Lion's Roar 
	} 
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	-----------------------------------
	----- Lords of Dread
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2457) 
	local lootTable = { 
		181462, --Coordinated Offensive 
		182598, --Demon Muzzle 
		181786, --Eternal Hunger 
		181461, --Ice Bite 
		181962, --Mental Recovery 
		183485, --Savage Combatant 
		183184, --Stinging Strike 
		182109, --Totemic Surge 
		182465, --Truth's Wake 
		189846, --Alandien's Tortured Twinblades 
		189845, --Ruined Crest of Lordaeron 
		188879, --Capelet of the Empyrean 
		188843, --Erudite Occultist's Mantle 
		188856, --Godstalker's Pauldrons 
		188932, --Luminous Chevalier's Epaulettes 
		188888, --Mantle of the Demon Star 
		188896, --Mercurial Punisher's Shoulderpads 
		188941, --Pauldrons of the Infinite Infantry 
		188851, --Shoulderpads of the Fixed Stars 
		188867, --Shoulderplates of the First Eidolon 
		188905, --Soulblade Nightwings 
		188914, --Tassets of the Grand Upwelling 
		188920, --Theurgic Starspeaker's Adornment 
		189847, --Shroud of the Sire's Chosen 
		189842, --Cuffs of the Covert Commander 
		189844, --Gauntlets of Unseen Guests 
		189843, --Grasps of Abducted Fate 
		188255, --Heart of the Swarm 
		188261, --Intrusive Thoughtcage 
	} 
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	-----------------------------------
	----- Rygelon
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2467) 
	local lootTable = { 
		183468, --Born Anew 
		180943, --Cacophonous Roar 
		182461, --Echoing Blessings 
		181498, --Grounding Surge 
		183497, --Recuperator 
		182368, --Relentless Onslaught 
		189852, --Antumbra, Shadow of the Cosmos 
		189851, --Devastated Worldshard 
		191001, --Observer's Umbral Shiv 
		189853, --Astral Verdict 
		188938, --Breastplate of the Infinite Infantry 
		188864, --Carapace of the First Eidolon 
		188849, --Chestguard of the Fixed Stars 
		188912, --Cuirass of the Grand Upwelling 
		188839, --Erudite Occultist's Robes 
		188858, --Godstalker's Hauberk 
		188875, --Habit of the Empyrean 
		188929, --Luminous Chevalier's Plackart 
		188894, --Mercurial Punisher's Jerkin 
		188884, --Robes of the Demon Star 
		188903, --Soulblade Leathers 
		188922, --Theurgic Starspeaker's Ringmail 
		189849, --Interdimensional Manica 
		189850, --Handguards of Hidden Realms 
		189848, --Treads of Titanic Curiosity 
		189854, --Rygelon's Heraldric Ring 
		188254, --Grim Eclipse 
	} 
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	-----------------------------------
	----- The Jailer
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2464) 
	local lootTable = { 
		181975, --Hardened Bones 
		182131, --Haunting Apparitions 
		181510, --Lingering Numbness 
		183491, --Ready for Anything 
		182449, --Resolute Barrier 
		182480, --Reversal of Fortune 
		182318, --Viscous Ink 
		189862, --Gavel of the First Arbiter 
		189861, --Zovastrum, the Unmaking 
		189818, --Domination's Deliverance 
		189860, --Forbidden Truth 
		189859, --Worldkiller Iris 
		189855, --Bindings of the Banished One 
		189856, --Runecarver's Twisted Ward 
		189857, --Epochal Oppressor's Greaves 
		189858, --Legguards of the Ultimate Threat 
		188252, --Chains of Domination 
		188253, --Scars of Fraternal Strife 
	} 
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)

	--------------------------------------------------
	----- Trash Loot
	--------------------------------------------------
	local bossName = "Trash Loot"
	local lootTable = {
		190630, --Devouring Pellicle Shoulderpads
		190631, --Vandalized Ephemera Mitts
		190627, --Subversive Lord's Leggings
		190626, --Hood of Empty Eternities
		190629, --Cartel's Larcenous Toecaps
		192628, --Lupine's Synthetic Headgear
		190625, --Pauldrons of Possible Afterlives
		190624, --Gauntlets of the End
	}
	self:RegisterBossLoot(Sepulcher, lootTable, bossName)
end



function SepulcherRaid:InitializeZoneDetect(ZoneDetect)
	ZoneDetect:RegisterMapID(2047,   Sepulcher)
	ZoneDetect:RegisterNPCID(180773, Sepulcher, 1) --Vigilant Guardian
	ZoneDetect:RegisterNPCID(183937, Sepulcher, 2) --Skolex, The Insatiable Ravener
	ZoneDetect:RegisterNPCID(183501, Sepulcher, 3) --Artificer Xy'mox
	ZoneDetect:RegisterNPCID(181224, Sepulcher, 4) --Dausegne, the Fallen Oracle
	ZoneDetect:RegisterNPCID(181549, Sepulcher, 5) --Prototype Pantheon
	ZoneDetect:RegisterNPCID(182169, Sepulcher, 6) --Lihuvim, Principal Architect
	ZoneDetect:RegisterNPCID(184915, Sepulcher, 7) --Halondrus the Reclaimer
	ZoneDetect:RegisterNPCID(181954, Sepulcher, 8) --Anduin Wrynn
	ZoneDetect:RegisterNPCID(26533, Sepulcher, 9) --Lords of Dread
	ZoneDetect:RegisterNPCID(182777, Sepulcher, 10) --Rygelon
	ZoneDetect:RegisterNPCID(185421, Sepulcher, 11) --The Jailer
end

end
