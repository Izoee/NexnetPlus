-- HOME - Opens the menu
-- CLICK ANYWHERE OTHER THAN THE MENU - Closes the menu and resets its position

--[[
    CREDITS :
        @Izodope#9936 - Main Creator
        @DevGrab#0815 - Adding Functions, GUI Help, & Emotional Support
        @Waffle#0758 - Mermaid Script
        @atom.#2135 - Ship Speed Script
        @! Camo#0001 - Testing & telling me I have a skill issue
        @Juke#7394 - Island ESP Bitchwork
--]]

-- Menu Toggle
pToggle = false -- DO NOT CHANGE THIS VARIABLE

-- ESP Toggles
-- You can change the "false" for any of the following variables to "true"
-- and save the lua file for your preferred default settings
eventToggle = false
kegToggle = false
valuableToggle = false
sharkToggle = false
sharkAlertToggle = false
mermToggle = false
sirenToggle = false
ammoPouchToggle = false
ladderToggle = false
islandToggle = false
shipSpeedToggle = false
emissaryFlagToggle = false
goldHoarderKeyToggle = false
fortKeyToggle = false
shipValToggle = false

-- Colors
-- You can change any of the following variables to whatever color you want in an RGBA format
fillRGB, fillA = 20, 80 -- Fill Color and Alpha
borderR, borderG, borderB, borderA = 255, 255, 255, 255 -- Border RGBA
titleR, titleG, titleB, titleA = 255, 255, 255, 255 -- Title RGBA
optionR, optionG, optionB, optionA = 255, 255, 255, 255 -- Text RGBA
eventR, eventG, eventB, eventA = 255, 255, 255, 255 -- World Event RGBA
kegR, kegG, kegB, kegA = 255, 0, 0, 255 -- Keg RGBA
valuableR, valuableG, valuableB, valuableA = 255, 255, 255, 255 -- Valuable Item RGBA
sharkR, sharkG, sharkB, sharkA = 255, 255, 255, 255 -- Shark RGBA
sAlertR, sAlertG, sAlertB, sAlertA = 255, 0, 0, 255 -- Shark Alert RGBA
mermR, mermG, mermB, mermA = 255, 255, 255, 255 -- Mermaid RGBA
sirenR, sirenG, sirenB, sirenA = 255, 255, 255, 255 -- Siren RGBA
ammoR, ammoG, ammoB, ammoA = 255, 255, 255, 255 -- Ammo RGBA
ladderR, ladderG, ladderB, ladderA = 255, 255, 255, 255 -- Ladder RGBA
islandR, islandG, islandB, islandA = 255, 255, 255, 255 -- Island RGBA
outpostR, outpostG, outpostB, outpostA = 0, 255, 0, 255 -- Outpost RGBA
speedR, speedG, speedB, speedA = 255, 255, 255, 255 -- Ship Speed RGBA
emissaryR, emissaryG, emissaryB, emissaryA = 255, 255, 255, 255 -- Emissary Flag RGBA
ghKeyR, ghKeyG, ghKeyB, ghKeyA = 255, 255, 255, 255 -- Gold Hoarder Key RGBA
fortKeyR, fortKeyG, fortKeyB, fortKeyA = 255, 255, 255, 255 -- Stronghold Key RGBA
giValR, giValG, giValB, giValA = 255, 255, 0, 255 -- Current ship's gold RGBA
diValR, diValG, diValB, diValA = 0, 255, 255, 255 -- Current ship's doubloons RGBA

-- Menu Size and Location
pX, pY = 1650, 75 -- Change this to change the default position of the menu
oW, oH = 200, 392
pW, pH = oW, oH
pCX = pW / 2 + pX
pCY = pH / 2 + pY
aLeft = pCX - 45

-- Title and divider
title = pY + 10
divider = title + 22

-- Line Y Values
lineOne = title + 30
lineTwo = lineOne + 20
lineThree = lineTwo + 20
lineFour = lineThree + 20
lineFive = lineFour + 20
lineSix = lineFive + 20
lineSeven = lineSix + 20
lineEight = lineSeven + 20
lineNine = lineEight + 20
lineTen = lineNine + 20
lineEleven = lineTen + 20
lineTwelve = lineEleven + 20
lineThirteen = lineTwelve + 20
lineFourteen = lineThirteen + 20
lineFifteen = lineFourteen + 20

-- Rectangle Position
rectX = pCX + 73
l1RectY = lineOne + 4
l2RectY = lineTwo + 4
l3RectY = lineThree + 4
l4RectY = lineFour + 4
l5RectY = lineFive + 4
l6RectY = lineSix + 4
l7RectY = lineSeven + 4
l8RectY = lineEight + 4
l9RectY = lineNine + 4
l10RectY = lineTen + 4
l11RectY = lineEleven + 4
l12RectY = lineTwelve + 4
l13RectY = lineThirteen + 4
l14RectY = lineFourteen + 4
l15RectY = lineFifteen + 4

-- Zones
zoneXAlign = pX + 5
zoneWidth = 190
zoneHeight = 18
zoneL1Y = l1RectY - 4
zoneL2Y = l2RectY - 4
zoneL3Y = l3RectY - 4
zoneL4Y = l4RectY - 4
zoneL5Y = l5RectY - 4
zoneL6Y = l6RectY - 4
zoneL7Y = l7RectY - 4
zoneL8Y = l8RectY - 4
zoneL9Y = l9RectY - 4
zoneL10Y = l10RectY - 4
zoneL11Y = l11RectY - 4
zoneL12Y = l12RectY - 4
zoneL13Y = l13RectY - 4
zoneL14Y = l14RectY - 4
zoneL15Y = l15RectY - 4

-- Exit Button Position
eButtonX = pW / 3 + pX
eButtonY = pH + pY - 35
eButtonW = 70
eButtonH = 25
eBCX = eButtonW / 2 + eButtonX
eBCY = eButtonH / 2 + eButtonY - 8

-- Mouse Stuff
leftDown = false
mX, mY = 0, 0
cMX, cMY = 0, 0
movingMenu = false

-- Declare Island Info Arrays
islandX = {}
islandY = {}
islandZConst = 15000
islandN = {}

-- Island Info | Credit: @Juke#7394
islandX[0] = 497395; islandY[0] = -327061; islandN[0] = "Traitor's Fate Forteress"
islandX[1] = 387505; islandY[1] = -304825; islandN[1] = "Plunderer's Plight"
islandX[2] = 446022; islandY[2] = -206311; islandN[2] = "Galleon's Grave Outpost"
islandX[3] = 300976; islandY[3] = -233652; islandN[3] = "Sunken Grove"
islandX[4] = 441512; islandY[4] = -369299; islandN[4] = "Black Water Enclave"
islandX[5] = 336077; islandY[5] = -117935; islandN[5] = "Skull Keep"
islandX[6] = 432052; islandY[6] = -90803; islandN[6] = "Tri-Rock Isle"
islandX[7] = 499368; islandY[7] = -36450; islandN[7] = "Liar's Backbone"
islandX[8] = 507858; islandY[8] = -101328; islandN[8] = "Three Paces East Seapost"
islandX[9] = 680209; islandY[9] = 28414; islandN[9] = "Flintlock Peninsula"
islandX[10] = 377950; islandY[10] = -460878; islandN[10] = "Marauder's Arch"
islandX[11] = 443559; islandY[11] = 62449; islandN[11] = "Kraken's Fall"
islandX[12] = 140510; islandY[12] = -64866; islandN[12] = "Shipwreck Bay"
islandX[13] = 151885; islandY[13] = -217786; islandN[13] = "Dagger Tooth Outpost"
islandX[14] = 244097; islandY[14] = -138150; islandN[14] = "Isle of Last Words"
islandX[15] = 167832; islandY[15] = -400381; islandN[15] = "Old Faithful Isle"
islandX[16] = 381084; islandY[16] = -362667; islandN[16] = "Shrine of Hungering"
islandX[17] = 308923; islandY[17] = -359532; islandN[17] = "Shark Fin Camp"
islandX[18] = 267942; islandY[18] = -397816; islandN[18] = "Wild Treasure Store"
islandX[19] = 225601; islandY[19] = -313671; islandN[19] = "Blind Man Lagoon"
islandX[20] = 68944; islandY[20] = -316121; islandN[20] = "Kraken Watchtower"
islandX[21] = -45347; islandY[21] = -326147; islandN[21] = "Royal Crest Fortress"
islandX[22] = 31092; islandY[22] = -414643; islandN[22] = "Scurvey Isley"
islandX[23] = 98942; islandY[23] = -469294; islandN[23] = "Treasury of the Secret Wilds"
islandX[24] = 269829; islandY[24] = -451366; islandN[24] = "Black Sand Atoll"
islandX[25] = -91772; islandY[25] = -207283; islandN[25] = "Hidden Spring Keep"
islandX[26] = 14876; islandY[26] = -141302; islandN[26] = "K9 Isle"
islandX[27] = -155339; islandY[27] = -307117; islandN[27] = "Lone Cove"
islandX[28] = -183245; islandY[28] = -388273; islandN[28] = "Shrine of the Coral Tomb"
islandX[29] = -198353; islandY[29] = -447625; islandN[29] = "Salty Sands"
islandX[30] = -110660; islandY[30] = -408053; islandN[30] = "Picaroon Palms"
islandX[31] = -307407; islandY[31] = -467892; islandN[31] = "Smuggler's Bay"
islandX[32] = -249297; islandY[32] = -369388; islandN[32] = "Boulder Cay"
islandX[33] = -376311; islandY[33] = -377337; islandN[33] = "Sandy Shallows"
islandX[34] = -295343; islandY[34] = -260705; islandN[34] = "Sanctuary Outpost"
islandX[35] = -442964; islandY[35] = -281912; islandN[35] = "Keel Haul Fort"
islandX[36] = -488360; islandY[36] = -396989; islandN[36] = "Sailor's Bounty"
islandX[37] = -436438; islandY[37] = -499281; islandN[37] = "Treasury of Sunken Shores"
islandX[38] = -500797; islandY[38] = -245909; islandN[38] = "Spoils of Plenty Store"
islandX[39] = -396814; islandY[39] = -185474; islandN[39] = "Rapier Cay"
islandX[40] = -502584; islandY[40] = -130358; islandN[40] = "Crescent Isle"
islandX[41] = -390068; islandY[41] = -55461; islandN[41] = "Port Merrick"
islandX[42] = -495854; islandY[42] = -11818; islandN[42] = "Sea Dog's Rest"
islandX[43] = -550529; islandY[43] = -14183; islandN[43] = "Imperial Crown Fortress"
islandX[44] = -504272; islandY[44] = 97442; islandN[44] = "Mermaid's Hideaway"
islandX[45] = -395572; islandY[45] = 60912; islandN[45] = "Lagoon of Whispers"
islandX[46] = -89466; islandY[46] = 49335; islandN[46] = "Reaper's Hideout"
islandX[47] = -268149; islandY[47] = 55395; islandN[47] = "Wanderer's Refuge"
islandX[48] = -247097; islandY[48] = -96161; islandN[48] = "Cannon Cove"
islandX[49] = -197773; islandY[49] = -200711; islandN[49] = "Lonely Isle"
islandX[50] = -141763; islandY[50] = -117577; islandN[50] = "Rum Runner Isle"
islandX[51] = -149912; islandY[51] = -61976; islandN[51] = "North Star Sea Post"
islandX[52] = -176038; islandY[52] = -14527; islandN[52] = "Twin Groves"
islandX[53] = 30789; islandY[53] = 15754; islandN[53] = "Sea Dog's Tavern"
islandX[54] = 187330; islandY[54] = 8591; islandN[54] = "Shrine of Flooded Embrace"
islandX[55] = 266789; islandY[55] = -17657; islandN[55] = "Crooked Mast"
islandX[56] = 376462; islandY[56] = -19008; islandN[56] = "Shiver Retreat"
islandX[57] = 335006; islandY[57] = 67601; islandN[57] = "Shark Tooth Key"
islandX[58] = 341037; islandY[58] = 141763; islandN[58] = "Mercys End Fortress"
islandX[59] = 341037; islandY[59] = 141763; islandN[59] = "N13"
islandX[60] = 681414; islandY[60] = 30865; islandN[60] = "Fetcher's Rest"
islandX[61] = 847028; islandY[61] = 24400; islandN[61] = "Brian's Bazaar"
islandX[62] = 916428; islandY[62] = 4520; islandN[62] = "Molten Sands Fortress"
islandX[63] = 836805; islandY[63] = 93693; islandN[63] = "Cursewater Shores"
islandX[64] = 862088; islandY[64] = 263623; islandN[64] = "Ruby's Fall"
islandX[65] = 695105; islandY[65] = 322347; islandN[65] = "Morrows Peak Outpost"
islandX[66] = 596063; islandY[66] = 262161; islandN[66] = "Forsaken Brink"
islandX[67] = 619397; islandY[67] = 168321; islandN[67] = "Cinder Islet"
islandX[68] = 830881; islandY[68] = 394511; islandN[68] = "Brimstone Rock"
islandX[69] = 940301; islandY[69] = 407962; islandN[69] = "Glowstone Cay"
islandX[70] = 879758; islandY[70] = 506121; islandN[70] = "Magmas Tide"
islandX[71] = 757005; islandY[71] = 546313; islandN[71] = "Devil's Thirst"
islandX[72] = 611017; islandY[72] = 564837; islandN[72] = "Roaring Sands"
islandX[73] = 670707; islandY[73] = 656844; islandN[73] = "Ashen Reaches"
islandX[74] = 325006; islandY[74] = 452559; islandN[74] = "Devil's Ridge"
islandX[75] = 242891; islandY[75] = 346706; islandN[75] = "Crow's Nest Fortress"
islandX[76] = 211099; islandY[76] = 444881; islandN[76] = "Mutineer Rock"
islandX[77] = 187170; islandY[77] = 502692; islandN[77] = "Shrine of Ancient Tears"
islandX[78] = 109205; islandY[78] = 480884; islandN[78] = "Thieves Haven"
islandX[79] = 24384; islandY[79] = 568480; islandN[79] = "Old Brinstone Fortress"
islandX[80] = 4912; islandY[80] = 512632; islandN[80] = "Booty isle"
islandX[81] = 605728; islandY[81] = 470883; islandN[81] = "Roaring Traders"
islandX[82] = 700238; islandY[82] = 459892; islandN[82] = "Flames End"
islandX[83] = 369477; islandY[83] = 313845; islandN[83] = "Ancient Spire Outpost"
islandX[84] = 146760; islandY[84] = 371368; islandN[84] = "Cutlass Cay"
islandX[85] = 78968; islandY[85] = 319956; islandN[85] = "Paradise Spring"
islandX[86] = -18130; islandY[86] = 381961; islandN[86] = "Plunder Outpost"
islandX[87] = -77747; islandY[87] = 481468; islandN[87] = "Lookout Point"
islandX[88] = -179137; islandY[88] = 456515; islandN[88] = "Shark Bait Cove"
islandX[89] = -212180; islandY[89] = 382002; islandN[89] = "Shrine of Tribute"
islandX[90] = -140227; islandY[90] = 338323; islandN[90] = "Lost Gold Fort"
islandX[91] = -265455; islandY[91] = 332385; islandN[91] = "The Finest Trading Post"
islandX[92] = -290473; islandY[92] = 400309; islandN[92] = "Old Salts Atoll"
islandX[93] = -300255; islandY[93] = 460275; islandN[93] = "Ancient Gold Fortress"
islandX[94] = -361703; islandY[94] = 313736; islandN[94] = "Discovery Rigde"
islandX[95] = -241502; islandY[95] = 255960; islandN[95] = "Plunder Valley"
islandX[96] = -351128; islandY[96] = 160700; islandN[96] = "Sailor's Knot Stronghold"
islandX[97] = -424639; islandY[97] = 150931; islandN[97] = "Shrine of Oceans Fortune"
islandX[98] = -157242; islandY[98] = 176150; islandN[98] = "Treasury of the Lost Ancients"
islandX[99] = 5222; islandY[99] = 238993; islandN[99] = "Snake Isle"
islandX[100] = -106153; islandY[100] = 242422; islandN[100] = "Chicken Isle"
islandX[101] = 71001; islandY[101] = 232711; islandN[101] = "Stephen's Spoils"
islandX[102] = 94017; islandY[102] = 155428; islandN[102] = "Fort of the Damned"
islandX[103] = -6017; islandY[103] = 129194; islandN[103] = "Castaway Isle"
islandX[104] = -88283; islandY[104] = 155235; islandN[104] = "Fool's Lagoon"
islandX[105] = 163885; islandY[105] = 246305; islandN[105] = "Crook's Hollow"
islandX[106] = 275365; islandY[106] = 231924; islandN[106] = "Barnacle Cay"

-- Gold Item Names and Gold Values
giName = {}
giVal = {}
giName[0] = "BP_ReapersBounty_Proxy_C"; giVal[0] = 10000 -- Reapers Bounty
giName[1] = "BP_FortReapersBountyChest_Proxy_C"; giVal[1] = 10000 -- Reapers Bounty (FoTD)
giName[2] = "BP_GoldhoarderSkull_Proxy_C"; giVal[2] = 10000 -- Gold Hoarder's Skull
giName[3] = "BP_AshenWindsSkull_Proxy_C"; giVal[3] = 10000 -- Ashen Winds Skull
giName[4] = "BP_BountyRewardSkull_Proxy_Fort_C"; giVal[4] = 1800 -- Stronghold Skull
giName[5] = "BP_BountyRewardSkull_Proxy_Ghost_Captain_C"; giVal[5] = 1700 -- Captain Skull of the Damned
giName[6] = "BP_BountyRewardSkull_Proxy_Ghost_Common_C"; giVal[6] = 1050 -- Skull of the Damned
giName[7] = "BP_BountyRewardSkull_Proxy_AIShip_C"; giVal[7] = 850 -- Skeleton Captain's Skull
giName[8] = "BP_BountyRewardSkull_Proxy_Mythical_DVR_C"; giVal[8] = 1450 -- Ashen Villainous Bounty Skull
giName[9] = "BP_BountyRewardSkull_Proxy_Mythical_C"; giVal[9] = 750 -- Villainous Bounty Skull
giName[10] = "BP_SKLostCapSkullProxy_Mythical_C"; giVal[10] = 1313 -- Villainous Coral Skull
giName[11] = "BP_BountyRewardSkull_Proxy_Legendary_DVR_C"; giVal[11] = 750 -- Ashen Hateful Bounty Skull
giName[12] = "BP_BountyRewardSkull_Proxy_Legendary_C"; giVal[12] = 350 -- Hateful Bounty Skull
giName[13] = "BP_SKLostCapSkullProxy_Legendary_C"; giVal[13] = 613 -- Hateful Coral Skull
giName[14] = "BP_BountyRewardSkull_Proxy_Rare_DVR_C"; giVal[14] = 350 -- Ashen Disgraced Bounty Skull
giName[15] = "BP_BountyRewardSkull_Proxy_Rare_C"; giVal[15] = 180 -- Disgraced Bounty Skull
giName[16] = "BP_SKLostCapSkullProxy_Rare_C"; giVal[16] = 315 -- Disgraced Coral Skull
giName[17] = "BP_BountyRewardSkull_Proxy_Common_DVR_C"; giVal[17] = 180 -- Ashen Foul Bounty Skull
giName[18] = "BP_BountyRewardSkull_Proxy_Common_C"; giVal[18] = 90 -- Foul Bounty Skull
giName[19] = "BP_SKLostCapSkullProxy_Common_C"; giVal[19] = 158 -- Foul Coral Skull
giName[20] = "BP_MermaidGem_Proxy_Ruby_C"; giVal[20] = 2000 -- Ruby Mermaid Gem
giName[21] = "BP_SirenGem_Proxy_Ruby_C"; giVal[21] = 2000 -- Ruby Siren Gem
giName[22] = "BP_SK_SirenEssence_Ruby_Proxy_C"; giVal[22] = 8000 -- Ruby Breath of the Sea
giName[23] = "BP_MermaidGem_Proxy_Emerald_C"; giVal[23] = 1500 -- Emerald Mermaid Gem
giName[24] = "BP_SirenGem_Proxy_Emerald_C"; giVal[24] = 1500 -- Emerald Siren Gem
giName[25] = "BP_SK_SirenEssence_Emerald_Proxy_C"; giVal[25] = 6000 -- Emerald Breath of the Sea
giName[26] = "BP_MermaidGem_Proxy_Sapphire_C"; giVal[26] = 1000 -- Sapphire Mermaid Gem
giName[27] = "BP_SirenGem_Proxy_Sapphire_C"; giVal[27] = 1000 -- Sapphire Siren Gem
giName[28] = "BP_SK_SirenEssence_Sapphire_Proxy_C"; giVal[28] = 4000 -- Sapphire Breath of the Sea
giName[29] = "BP_Wondrous_Proxy_C"; giVal[29] = 25000 -- Box of Wondrous Secrets
giName[30] = "BP_TreasureChest_Proxy_PirateLegend_DVR_C"; giVal[30] = 13000 -- Ashen Chest of Legends
giName[31] = "BP_TreasureChest_Proxy_PirateLegend_C"; giVal[31] = 8600 -- Chest of Legends
giName[32] = "BP_trs_box_leg_01_a_Proxy_C"; giVal[32] = 2500 -- Offering of Legendary Goods
giName[33] = "BP_trs_dark_shark_leg_01_a_Proxy_C"; giVal[33] = 2500 -- Artifact of Legendary Hunger
giName[34] = "BP_trs_impressive_leg_01_a_Proxy_C"; giVal[34] = 3500 -- Athena's Relic
giName[35] = "BP_trs_jar_leg_01_a_Proxy_C"; giVal[35] = 1400 -- Jar of Athena's Incense
giName[36] = "BP_trs_jewellery_box_leg_01_a_Proxy_C"; giVal[36] = 2500 -- Legendary Fortune Keeper
giName[37] = "BP_trs_leg_crain__leg_01_a_Proxy_C"; giVal[37] = 3500 -- Skull of Athena's Blessing
giName[38] = "BP_MerchantCrate_PirateLegendBigGunpowderBarrelProxy_C"; giVal[38] = 3000 -- Keg of Ancient Black Powder
giName[39] = "BP_BountyRewardSkull_UncommonPirateLegend_C"; giVal[39] = 1400 -- Villainous Skull of Ancient Fortune
giName[40] = "BP_BountyRewardSkull_PirateLegend_C"; giVal[40] = 570 -- Skull of Ancient Fortune
giName[41] = "BP_Treasure_Artifact_Proxy_piratelegendimpressive_03_a_C"; giVal[41] = 1400 -- Gilded Relic of Ancient Fortune
giName[42] = "BP_MerchantCrate_CommonPirateLegend_Proxy_C"; giVal[42] = 570 -- Crate of Legendary Voyages
giName[43] = "BP_Treasure_Artifact_Proxy_piratelegend_goblet_02_a_C"; giVal[43] = 570 -- Chalice of Ancient Fortune
giName[44] = "BP_TreasureChest_Proxy_ChestofFortune_C"; giVal[44] = 20000 -- Chest of Fortune
giName[45] = "BP_TreasureChest_Proxy_Fort_C"; giVal[45] = 1500 -- Stronghold Chest
giName[46] = "BP_TreasureChest_Vault_Proxy_C"; giVal[46] = 3400 -- Chest of Ancient Tributes
giName[47] = "BP_TreasureChest_Proxy_Ghost_C"; giVal[47] = 1000 -- Chest of the Damned
giName[48] = "BP_TreasureChest_Proxy_AIShip_C"; giVal[48] = 1150 -- Skeleton Captain's Chest
giName[49] = "BP_TreasureChest_Proxy_Mythical_DVR_C"; giVal[49] = 1100 -- Ashen Captain's Chest
giName[50] = "BP_ShipwreckTreasureChest_Proxy_Mythical_C"; giVal[50] = 560 -- Shipwrecked Captain's Chest
giName[51] = "BP_TreasureChest_Proxy_Drunken_C"; giVal[51] = 2200 -- Chest of a Thousand Grogs
giName[52] = "BP_TreasureChest_Proxy_ChestOfRage_C"; giVal[52] = 3000 -- Chest of Rage
giName[53] = "BP_TreasureChest_Proxy_Weeping_C"; giVal[53] = 3000 -- Chest of Sorrow
giName[54] = "BP_TreasureChest_Proxy_Mythical_C"; giVal[54] = 560 -- Captain's Chest
giName[55] = "BP_SK_CoralChest_Proxy_Mythical_C"; giVal[55] = 980 -- Coral Captain's Chest
giName[56] = "BP_TreasureChest_Proxy_Legendary_DVR_C"; giVal[56] = 560 -- Ashen Marauder's Chest
giName[57] = "BP_ShipwreckTreasureChest_Proxy_Legendary_C"; giVal[57] = 280 -- Shipwrecked Marauder's Chest
giName[58] = "BP_TreasureChest_Proxy_Legendary_C"; giVal[58] = 280 -- Marauder's Chest
giName[59] = "BP_SK_CoralChest_Proxy_Legendary_C"; giVal[59] = 490 -- Coral Marauder Chest
giName[60] = "BP_TreasureChest_Proxy_Rare_DVR_C"; giVal[60] = 560 -- Ashen Seafarer's Chest
giName[61] = "BP_ShipwreckTreasureChest_Proxy_Rare_C"; giVal[61] = 140 -- Shipwrecked Seafarer's Chest
giName[62] = "BP_TreasureChest_Proxy_Rare_C"; giVal[62] = 140 -- Seafarer's Chest
giName[63] = "BP_SK_CoralChest_Proxy_Rare_C"; giVal[63] = 245 -- Coral Seafarer's Chest
giName[64] = "BP_TreasureChest_Proxy_Common_DVR_C"; giVal[64] = 1100 -- Ashen Castaway's Chest
giName[65] = "BP_ShipwreckTreasureChest_Proxy_Common_C"; giVal[65] = 60 -- Shipwrecked Castaway's Chest
giName[66] = "BP_TreasureChest_Proxy_Common_C"; giVal[66] = 60 -- Castaway's Chest
giName[67] = "BP_SK_CoralChest_Proxy_Common_C"; giVal[67] = 105 -- Coral Castaway Chest
giName[68] = "BP_MerchantCrate_BigGunpowderBarrelProxy_C"; giVal[68] = 2750 -- Stronghold Gunpowder Barrel
giName[69] = "BP_MerchantCrate_GunpowderBarrelProxy_C"; giVal[69] = 100 -- Gunpowder Barrel
giName[70] = "BP_MerchantCrate_Commodity_GhostCrate_Proxy_C"; giVal[70] = 1150 -- Ashes of the Damned
giName[71] = "BP_MerchantManifest_01a_Proxy_C"; giVal[71] = 2000 -- Prosperous Manifest
giName[72] = "BP_MerchantManifest_01b_Proxy_C"; giVal[72] = 2500 -- Esteemed Manifest
giName[73] = "BP_MerchantManifest_01c_Proxy_C"; giVal[73] = 3000 -- Eminent Manifest
giName[74] = "BP_MerchantManifest_01d_Proxy_C"; giVal[74] = 4000 -- Revered Merchant Manifest
giName[75] = "BP_MerchantCrate_Commodity_Fort_Proxy_C"; giVal[75] = 2100 -- Crate of Ancient Bone Dust
giName[76] = "BP_MerchantCrate_Commodity_Gemstones_Proxy_C"; giVal[76] = 2100 -- Crate of Precious Gemstones
giName[77] = "BP_MerchantCrate_Commodity_Minerals_Proxy_C"; giVal[77] = 1100 -- Crate of Minerals
giName[78] = "BP_SKMerchantCommodity_ForgottenJewels_Proxy_C"; giVal[78] = 1100 -- Casket of Forgotten Jewels
giName[79] = "BP_SKMerchantCommodity_AntiCoffee_Proxy_C"; giVal[79] = 260 -- Casket of Antiquated Coffee
giName[80] = "BP_MerchantCrate_Commodity_SpiceCrate_Proxy_C"; giVal[80] = 1100 -- Crate of Exquisite Spices
giName[81] = "BP_MerchantCrate_Commodity_Ore_Proxy_C"; giVal[81] = 500 -- Crate of Fine Ore
giName[82] = "BP_MerchantCrate_Commodity_SilkCrate_Proxy_C"; giVal[82] = 500 -- Crate of Exotic Silks
giName[83] = "BP_MerchantCrate_Commodity_VolcanicStone_Proxy_C"; giVal[83] = 260 -- Crate of Volcanic Stone
giName[84] = "BP_MerchantCrate_Commodity_TeaCrate_Proxy_C"; giVal[84] = 260 -- Crate of Rare Tea
giName[85] = "BP_MerchantCrate_Commodity_SugarCrate_Proxy_C"; giVal[85] = 100 -- Crate of Fine Sugar
giName[86] = "BP_Treasure_Artifact_Proxy_DVR_Mythical_C"; giVal[86] = 1100 -- Magma Grail
giName[87] = "BP_Treasure_Artifact_Proxy_DVR_Legendary_C"; giVal[87] = 560 -- Devil's Remnant
giName[88] = "BP_Treasure_Artifact_Proxy_impressive_01_a_C"; giVal[88] = 560 -- Opulent Curio
giName[89] = "BP_Treasure_Artifact_Proxy_impressive_02_a_C"; giVal[89] = 560 -- Adorned Receptacle
giName[90] = "BP_Treasure_Artifact_Proxy_impressive_03_a_C"; giVal[90] = 980 -- Peculiar Relic
giName[91] = "BP_SKCoralTrinket_Mythical_Proxy_C"; giVal[91] = 980 -- Peculiar Coral Relic
giName[92] = "BP_Treasure_Artifact_Proxy_DVR_Rare_C"; giVal[92] = 280 -- Brimstone Casket
giName[93] = "BP_Treasure_Artifact_Proxy_box_03_a_C"; giVal[93] = 280 -- Golden Reliquary
giName[94] = "BP_SKCoralTrinket_Legendary_Proxy_C"; giVal[94] = 490 -- Golden Coral Reliquary
giName[95] = "BP_Treasure_Artifact_Proxy_goblet_03_a_C"; giVal[95] = 280 -- Gilded Chalice
giName[96] = "BP_Treasure_Artifact_Proxy_vase_03_a_C"; giVal[96] = 280 -- Ornate Carafe
giName[97] = "BP_Treasure_Artifact_Proxy_DVR_Common_C"; giVal[97] = 140 -- Roaring Goblet
giName[98] = "BP_Treasure_Artifact_Proxy_goblet_02_a_C"; giVal[98] = 140 -- Silvered Cup
giName[99] = "BP_SKCoralTrinket_Rare_Proxy_C"; giVal[99] = 245 -- Silvered Coral Cup
giName[100] = "BP_Treasure_Artifact_Proxy_vase_02_a_C"; giVal[100] = 140 -- Elaborate Flagon
giName[101] = "BP_Treasure_Artifact_Proxy_box_02_a_C"; giVal[101] = 140 -- Decorative Coffer
giName[102] = "BP_Treasure_Artifact_Proxy_vase_01_a_C"; giVal[102] = 60 -- Mysterious Vessel
giName[103] = "BP_SKCoralTrinket_Common_Proxy_C"; giVal[103] = 105 -- Mysterious Coral Vessel
giName[104] = "BP_Treasure_Artifact_Proxy_box_01_a_C"; giVal[104] = 60 -- Bronze Secret-Keeper
giName[105] = "BP_Treasure_Artifact_Proxy_goblet_01_a_C"; giVal[105] = 60 -- Ancient Goblet
giName[106] = "BP_EmissaryFlotsam_OrderOfSouls_Rank5_Proxy_C"; giVal[106] = 9500 -- Order of Souls Flag Lvl5
giName[107] = "BP_EmissaryFlotsam_OrderOfSouls_Rank4_Proxy_C"; giVal[107] = 7600 -- Order of Souls Flag Lvl4
giName[108] = "BP_EmissaryFlotsam_OrderOfSouls_Rank3_Proxy_C"; giVal[108] = 5500 -- Order of Souls Flag Lvl3
giName[109] = "BP_EmissaryFlotsam_OrderOfSouls_Rank2_Proxy_C"; giVal[109] = 3500 -- Order of Souls Flag Lvl2
giName[110] = "BP_EmissaryFlotsam_OrderOfSouls_Rank1_Proxy_C"; giVal[110] = 1600 -- Order of Souls Flag Lvl1
giName[111] = "BP_EmissaryFlotsam_GoldHoarders_Rank5_Proxy_C"; giVal[111] = 9500 -- Gold Hoarder Flag Lvl5
giName[112] = "BP_EmissaryFlotsam_GoldHoarders_Rank4_Proxy_C"; giVal[112] = 7600 -- Gold Hoarder Flag Lvl4
giName[113] = "BP_EmissaryFlotsam_GoldHoarders_Rank3_Proxy_C"; giVal[113] = 5500 -- Gold Hoarder Flag Lvl3
giName[114] = "BP_EmissaryFlotsam_GoldHoarders_Rank2_Proxy_C"; giVal[114] = 3500 -- Gold Hoarder Flag Lvl2
giName[115] = "BP_EmissaryFlotsam_GoldHoarders_Proxy_C"; giVal[115] = 1600 -- Gold Hoarder Flag Lvl1
giName[116] = "BP_EmissaryFlotsam_Reapers_Rank5_Proxy_C"; giVal[116] = 9500 -- Reaper's Bones Flag Lvl5
giName[117] = "BP_EmissaryFlotsam_Reapers_Rank4_Proxy_C"; giVal[117] = 7600 -- Reaper's Bones Flag Lvl4
giName[118] = "BP_EmissaryFlotsam_Reapers_Rank3_Proxy_C"; giVal[118] = 5500 -- Reaper's Bones Flag Lvl3
giName[119] = "BP_EmissaryFlotsam_Reapers_Rank2_Proxy_C"; giVal[119] = 3500 -- Reaper's Bones Flag Lvl2
giName[120] = "BP_EmissaryFlotsam_Reapers_Proxy_C"; giVal[120] = 1600 -- Reaper's Bones Flag Lvl1
giName[121] = "BP_EmissaryFlotsam_AthenasFortune_Rank5_Proxy_C"; giVal[121] = 9500 -- Athena's Fortune Flag Lvl5
giName[122] = "BP_EmissaryFlotsam_AthenasFortune_Rank4_Proxy_C"; giVal[122] = 7600 -- Athena's Fortune Flag Lvl4
giName[123] = "BP_EmissaryFlotsam_AthenasFortune_Rank3_Proxy_C"; giVal[123] = 5500 -- Athena's Fortune Flag Lvl3
giName[124] = "BP_EmissaryFlotsam_AthenasFortune_Rank2_Proxy_C"; giVal[124] = 3500 -- Athena's Fortune Flag Lvl2
giName[125] = "BP_EmissaryFlotsam_AthenasFortune_Proxy_C"; giVal[125] = 1600 -- Athena's Fortune Flag Lvl1
giName[126] = "BP_EmissaryFlotsam_MerchantAlliance_Rank5_Proxy_C"; giVal[126] = 9500 -- Merchant Alliance Flag Lvl5
giName[127] = "BP_EmissaryFlotsam_MerchantAlliance_Rank4_Proxy_C"; giVal[127] = 7600 -- Merchant Alliance Flag Lvl4
giName[128] = "BP_EmissaryFlotsam_MerchantAlliance_Rank3_Proxy_C"; giVal[128] = 5500 -- Merchant Alliance Flag Lvl3
giName[129] = "BP_EmissaryFlotsam_MerchantAlliance_Rank2_Proxy_C"; giVal[129] = 3500 -- Merchant Alliance Flag Lvl2
giName[130] = "BP_EmissaryFlotsam_MerchantAlliance_Proxy_C"; giVal[130] = 1600 -- Merchant Alliance Flag Lvl1
giName[131] = "BP_SirenTrident_Proxy_C"; giVal[131] = 250 -- Trident of Dark Tides
giName[132] = "BP_CollectorsChest_Proxy_C"; giVal[132] = 250 -- Collector's Chest
giName[133] = "BP_CollectorsChest_RevengeOfTheMorningstar_Proxy_C"; giVal[133] = 250 -- Morningstar Chest

-- Doubloon Items Names and Doubloon Values
diName = {}
diVal = {}
diName[0] = "BP_Ritual_Skull_Proxy_C"; diVal[0] = 10 -- Ritual Skull
diName[1] = "BP_AshenChestCollectorsChest_Proxy_C"; diVal[1] = 5 -- Ashen Collectors Chest
diName[2] = "BP_AshenChestCollectorsChest_Unlocked_Proxy_C"; diVal[2] = 5 -- Ashen Collectors Chest (Open)
diName[3] = "BP_AshenTomeVol1_05_Proxy_C"; diVal[3] = 5 -- Tome of Curses V
diName[4] = "BP_AshenTomeVol1_04_Proxy_C"; diVal[4] = 5 -- Tome of Curses IV
diName[5] = "BP_AshenTomeVol1_03_Proxy_C"; diVal[5] = 5 -- Tome of Curses III
diName[6] = "BP_AshenTomeVol1_02_Proxy_C"; diVal[6] = 5 -- Tome of Curses II
diName[7] = "BP_AshenTomeVol1_01_Proxy_C"; diVal[7] = 5 -- Tome of Curses I
diName[8] = "BP_AshenTomeVol2_05_Proxy_C"; diVal[8] = 5 -- Tome of Power V
diName[9] = "BP_AshenTomeVol2_04_Proxy_C"; diVal[9] = 5 -- Tome of Power IV
diName[10] = "BP_AshenTomeVol2_03_Proxy_C"; diVal[10] = 5 -- Tome of Power III
diName[11] = "BP_AshenTomeVol2_02_Proxy_C"; diVal[11] = 5 -- Tome of Power II
diName[12] = "BP_AshenTomeVol2_01_Proxy_C"; diVal[12] = 5 -- Tome of Power I
diName[13] = "BP_AshenTomeVol3_05_Proxy_C"; diVal[13] = 5 -- Tome of Fire V
diName[14] = "BP_AshenTomeVol3_04_Proxy_C"; diVal[14] = 5 -- Tome of Fire IV
diName[15] = "BP_AshenTomeVol3_03_Proxy_C"; diVal[15] = 5 -- Tome of Fire III
diName[16] = "BP_AshenTomeVol3_02_Proxy_C"; diVal[16] = 5 -- Tome of Fire II
diName[17] = "BP_AshenTomeVol3_01_Proxy_C"; diVal[17] = 5 -- Tome of Fire I
diName[18] = "BP_AshenTomeVol4_05_Proxy_C"; diVal[18] = 5 -- Tome of Resurrection V
diName[19] = "BP_AshenTomeVol4_04_Proxy_C"; diVal[19] = 5 -- Tome of Resurrection IV
diName[20] = "BP_AshenTomeVol4_03_Proxy_C"; diVal[20] = 5 -- Tome of Resurrection III
diName[21] = "BP_AshenTomeVol4_02_Proxy_C"; diVal[21] = 5 -- Tome of Resurrection II
diName[22] = "BP_AshenTomeVol4_01_Proxy_C"; diVal[22] = 5 -- Tome of Resurrection I
diName[23] = "BP_HighValueGift_Proxy_C"; diVal[23] = 10 -- Generous Gift
diName[24] = "BP_LowValueGift_Proxy_C"; diVal[24] = 5 -- Humble Gift
diName[25] = "BP_ReapersChest_Proxy_C"; diVal[25] = 25 -- Reapers Chest
diName[26] = "BP_Campaign018_ReapersBones_01_c_Proxy_C"; diVal[26] = 5 -- Rag and Bone Crate

-- Item Value Variables
playerShipDist = 0
shipType = 0
shipPosX, shipPosY, shipPosZ = 0, 0, 0
currentShipGVal = 0
currentShipDVal = 0

-- Classes
events = -1
kegs = -1
booty = -1
sharks = -1
merms = -1
sirens = -1
ammoPouches = -1
ladders = -1
ships = -1
fortKeys = -1

function checkBounds()
    if pToggle == true then
        if mX >= eButtonX and mX <= eButtonX + eButtonW then
            if mY >= eButtonY and mY <= eButtonY + eButtonH then
                closeMain()
            end
        end
    
        if mX >= pX and mX <= pX+oW and mY >= pY and mY <= pY+oH then
        else
            closeMain()
            resetPos = true
        end

        if mX >= zoneXAlign and mX <= zoneXAlign + 190 then
            if mY >= zoneL1Y and mY <= zoneL1Y + 18 then
                eventToggle = not eventToggle
  
            elseif mY >= zoneL2Y and mY <= zoneL2Y + 18 then
                kegToggle = not kegToggle
  
            elseif mY >= zoneL3Y and mY <= zoneL3Y + 18 then
                valuableToggle = not valuableToggle

            elseif mY >= zoneL4Y and mY <= zoneL4Y + 18 then
                sharkToggle = not sharkToggle

            elseif mY >= zoneL5Y and mY <= zoneL5Y + 18 then
                sharkAlertToggle = not sharkAlertToggle

            elseif mY >= zoneL6Y and mY <= zoneL6Y + 18 then
                mermToggle = not mermToggle

            elseif mY >= zoneL7Y and mY <= zoneL7Y + 18 then
                sirenToggle = not sirenToggle
            
            elseif mY >= zoneL8Y and mY <= zoneL8Y + 18 then
                ammoPouchToggle = not ammoPouchToggle

            elseif mY >= zoneL9Y and mY <= zoneL9Y + 18 then
                ladderToggle = not ladderToggle

            elseif mY >= zoneL10Y and mY <= zoneL10Y + 18 then
                islandToggle = not islandToggle
        
            elseif mY >= zoneL11Y and mY <= zoneL11Y + 18 then
                shipSpeedToggle = not shipSpeedToggle
                
            elseif mY >= zoneL12Y and mY <= zoneL12Y + 18 then
                emissaryFlagToggle = not emissaryFlagToggle
                
            elseif mY >= zoneL13Y and mY <= zoneL13Y + 18 then
                goldHoarderKeyToggle = not goldHoarderKeyToggle
                
            elseif mY >= zoneL14Y and mY <= zoneL14Y + 18 then
                fortKeyToggle = not fortKeyToggle
                
            elseif mY >= zoneL15Y and mY <= zoneL15Y + 18 then
                shipValToggle = not shipValToggle
            end
        end
    end
end

function closeMain()
    Nexnet_Input(false)
    Nexnet_DisableUI(false)
    pToggle = false
end

-- Parsing Function
function parseName(name)
    local namelen = string.len(name)
    local index = 0
    local pindex = 0

    for e = 15, 1, -1 do
        if index == nil then
            local pminus = ((namelen - pindex) + 2) * -1
            local pname = name:sub(1, pminus)
            return pname
        else
            pindex = index
            index = string.find(name, "_", index + 1)
        end
    end
end

-- Outpost Checker
function checkIfOutpost(name)
    local namelen = string.len(name)
    local index = 0
    local pindex = 0

    for e = 9, 1, -1 do
        if index == nil then
            local parsedName = name:sub(pindex + 1, namelen)
            if parsedName == "Outpost" or parsedName == "Hideout" or parsedName == "Merrick" then
                return true
            else
                return false
            end
        else
            pindex = index
            index = string.find(name, " ", index + 1)
        end
    end
end

function moveMenu(mouse)
    -- Panel Size and Location
    if mouse == 1 then
        pX = mX - (pW/2)
        pY = mY - (pH/15)
    elseif mouse == 0 then
        pX = 1650
        pY = 75
    end
    pW, pH = oW, oH
    pCX = pW / 2 + pX
    pCY = pH / 2 + pY
    aLeft = pCX - 45

    -- Title and divider
    title = pY + 9
    divider = title + 22

    -- Line Y Values
    lineOne = title + 30
    lineTwo = lineOne + 20
    lineThree = lineTwo + 20
    lineFour = lineThree + 20
    lineFive = lineFour + 20
    lineSix = lineFive + 20
    lineSeven = lineSix + 20
    lineEight = lineSeven + 20
    lineNine = lineEight + 20
    lineTen = lineNine + 20
    lineEleven = lineTen + 20
    lineTwelve = lineEleven + 20
    lineThirteen = lineTwelve + 20
    lineFourteen = lineThirteen + 20
    lineFifteen = lineFourteen + 20

    -- Rectangle Position
    rectX = pCX + 73
    l1RectY = lineOne + 4
    l2RectY = lineTwo + 4
    l3RectY = lineThree + 4
    l4RectY = lineFour + 4
    l5RectY = lineFive + 4
    l6RectY = lineSix + 4
    l7RectY = lineSeven + 4
    l8RectY = lineEight + 4
    l9RectY = lineNine + 4
    l10RectY = lineTen + 4
    l11RectY = lineEleven + 4
    l12RectY = lineTwelve + 4
    l13RectY = lineThirteen + 4
    l14RectY = lineFourteen + 4
    l15RectY = lineFifteen + 5

    -- Exit Button Position
    eButtonX = pW / 3 + pX
    eButtonY = pH + pY - 35
    eButtonW = 70
    eButtonH = 25
    eBCX = eButtonW / 2 + eButtonX
    eBCY = eButtonH / 2 + eButtonY - 8

    -- Zones
    zoneXAlign = pX + 5
    zoneWidth = 190
    zoneHeight = 18
    zoneL1Y = l1RectY - 4
    zoneL2Y = l2RectY - 4
    zoneL3Y = l3RectY - 4
    zoneL4Y = l4RectY - 4
    zoneL5Y = l5RectY - 4
    zoneL6Y = l6RectY - 4
    zoneL7Y = l7RectY - 4
    zoneL8Y = l8RectY - 4
    zoneL9Y = l9RectY - 4
    zoneL10Y = l10RectY - 4
    zoneL11Y = l11RectY - 4
    zoneL12Y = l12RectY - 4
    zoneL13Y = l13RectY - 4
    zoneL14Y = l14RectY - 4
    zoneL15Y = l15RectY - 4
end

function addToGTotal(val)
    currentShipGVal = currentShipGVal + val
end

function addToDTotal(val)
    currentShipDVal = currentShipDVal + val
end

function onRenderEvent()
    local posX, posY, posZ = Nexnet_GetPlayerPos()
    local panX, panY = Nexnet_GetViewportSize()
    local midX, midY = panX/2, panY/2
    mX, mY = Nexnet_GetMousePosition()
    left = Nexnet_IsLeftPressed()
    -- Nexnet_Console(true)
    local roundPosZ = math.floor(posZ)
    if pToggle == true then
        Nexnet_Input(true)
        Nexnet_DisableUI(true)

        if left == true then
            leftDown = true
            if mX >= pX and mY <= pX + pW then
                if mY >= pY and mY <= divider then
                    movingMenu = true
                end
            end
        elseif left == false and leftDown == true then
            if movingMenu == true then
                moveMenu(1)
                movingMenu = false
            else
                checkBounds()
            end
            leftDown = false
        end

        if resetPos == true then
            moveMenu(0)
            resetPos = false
        end

        -- FILL
        for i = oW - 2, 2, -1 do
            Nexnet_Line(pX + i, pY + 1, pX + i, pY + pH, fillRGB, fillRGB, fillRGB, fillA)
        end
        
        -- MENU
        Nexnet_Line(pCX + 100, divider, pCX - 100, divider, borderR, borderG, borderB, borderA)
        Nexnet_Line(pCX + 100, eButtonY - 12, pCX - 100, eButtonY - 12, borderR, borderG, borderB, borderA)
        Nexnet_Rect(pX, pY, pW, pH, borderR, borderG, borderB, borderA)
        Nexnet_String("NEXNET+", pCX, title, optionR, optionB, optionG, optionA, 15, 1)

        Nexnet_String("World Events", aLeft, lineOne, optionR, optionB, optionG, optionA, 15, 0)
        
        if eventToggle == true then
            Nexnet_Line(rectX, l1RectY + 10, rectX + 10, l1RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l1RectY, rectX + 10, l1RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l1RectY, 10, 10, optionR, optionB, optionG, optionA)

        Nexnet_String("Kegs", aLeft - 23, lineTwo, optionR, optionB, optionG, optionA, 15, 0)
        if kegToggle == true then
            Nexnet_Line(rectX, l2RectY + 10, rectX + 10, l2RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l2RectY, rectX + 10, l2RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l2RectY, 10, 10, optionR, optionB, optionG, optionA)

        Nexnet_String("Valuable Items", aLeft + 6, lineThree, optionR, optionB, optionG, optionA, 15, 0)
        if valuableToggle == true then
            Nexnet_Line(rectX, l3RectY + 10, rectX + 10, l3RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l3RectY, rectX + 10, l3RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l3RectY, 10, 10, optionR, optionB, optionG, optionA)

        Nexnet_String("Sharks", aLeft - 17, lineFour, optionR, optionB, optionG, optionA, 15, 0)
        if sharkToggle == true then
            Nexnet_Line(rectX, l4RectY + 10, rectX + 10, l4RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l4RectY, rectX + 10, l4RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l4RectY, 10, 10, optionR, optionB, optionG, optionA)
        
        Nexnet_String("Shark Alert", aLeft - 5, lineFive, optionR, optionB, optionG, optionA, 15, 0)
        if sharkAlertToggle == true then
            Nexnet_Line(rectX, l5RectY + 10, rectX + 10, l5RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l5RectY, rectX + 10, l5RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l5RectY, 10, 10, optionR, optionB, optionG, optionA)
        
        Nexnet_String("Mermaids", aLeft - 7, lineSix, optionR, optionB, optionG, optionA, 15, 0)
        if mermToggle == true then
            Nexnet_Line(rectX, l6RectY + 10, rectX + 10, l6RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l6RectY, rectX + 10, l6RectY + 10, optionR, optionB, optionG, optionA)
            
        end
        Nexnet_Rect(rectX, l6RectY, 10, 10, optionR, optionB, optionG, optionA)

        Nexnet_String("Sirens", aLeft - 18, lineSeven, optionR, optionB, optionG, optionA, 15, 0)
        if sirenToggle == true then
            Nexnet_Line(rectX, l7RectY + 10, rectX + 10, l7RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l7RectY, rectX + 10, l7RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l7RectY, 10, 10, optionR, optionB, optionG, optionA)

        Nexnet_String("Ammo Pouches", aLeft + 9, lineEight, optionR, optionB, optionG, optionA, 15, 0)
        if ammoPouchToggle == true then
            Nexnet_Line(rectX, l8RectY + 10, rectX + 10, l8RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l8RectY, rectX + 10, l8RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l8RectY, 10, 10, optionR, optionB, optionG, optionA)

        Nexnet_String("Ladders", aLeft - 13, lineNine, optionR, optionB, optionG, optionA, 15, 0)
        if ladderToggle == true then
            Nexnet_Line(rectX, l9RectY + 10, rectX + 10, l9RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l9RectY, rectX + 10, l9RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l9RectY, 10, 10, optionR, optionB, optionG, optionA)

        Nexnet_String("Islands", aLeft - 15, lineTen, optionR, optionB, optionG, optionA, 15, 0)
        if islandToggle == true then
            Nexnet_Line(rectX, l10RectY + 10, rectX + 10, l10RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l10RectY, rectX + 10, l10RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l10RectY, 10, 10, optionR, optionB, optionG, optionA)
        
        Nexnet_String("Ship Speed", aLeft - 3, lineEleven, optionR, optionB, optionG, optionA, 15, 0)
        if shipSpeedToggle == true then
            Nexnet_Line(rectX, l11RectY + 10, rectX + 10, l11RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l11RectY, rectX + 10, l11RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l11RectY, 10, 10, optionR, optionB, optionG, optionA)
        
        Nexnet_String("Emissary Flags", aLeft + 7, lineTwelve, optionR, optionB, optionG, optionA, 15, 0)
        if emissaryFlagToggle == true then
            Nexnet_Line(rectX, l12RectY + 10, rectX + 10, l12RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l12RectY, rectX + 10, l12RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l12RectY, 10, 10, optionR, optionB, optionG, optionA)
        
        Nexnet_String("Gold Vault Keys", aLeft + 8, lineThirteen, optionR, optionB, optionG, optionA, 15, 0)
        if goldHoarderKeyToggle == true then
            Nexnet_Line(rectX, l13RectY + 10, rectX + 10, l13RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l13RectY, rectX + 10, l13RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l13RectY, 10, 10, optionR, optionB, optionG, optionA)
        
        Nexnet_String("Stronghold Keys", aLeft + 9, lineFourteen, optionR, optionB, optionG, optionA, 15, 0)
        if fortKeyToggle == true then
            Nexnet_Line(rectX, l14RectY + 10, rectX + 10, l14RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l14RectY, rectX + 10, l14RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l14RectY, 10, 10, optionR, optionB, optionG, optionA)
        
        Nexnet_String("Ship Loot Value", aLeft + 8, lineFifteen, optionR, optionB, optionG, optionA, 15, 0)
        if shipValToggle == true then
            Nexnet_Line(rectX, l15RectY + 10, rectX + 10, l15RectY, optionR, optionB, optionG, optionA)
            Nexnet_Line(rectX, l15RectY, rectX + 10, l15RectY + 10, optionR, optionB, optionG, optionA)
        end
        Nexnet_Rect(rectX, l15RectY, 10, 10, optionR, optionB, optionG, optionA)

        Nexnet_Rect(eButtonX, eButtonY, eButtonW, eButtonH, optionR, optionB, optionG,optionA)
        Nexnet_String("Close", eBCX, eBCY, optionR, optionB, optionG,optionA, 15, 0)
        Nexnet_String("v1.3.0", pX + pW - 20, pY + pH - 17, 177, 177, 177, 255, 5, 0)
    end

    -- BACKEND
    if events == -1 then
        events = Nexnet_RegisterClass("Class Athena.GameplayEventSignal")
    end
    if eventToggle == true then
        if events > -1 then
            local num = Nexnet_GetActorCount(events)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(events, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    gName = Nexnet_GetActorName(events, i)
                    name = parseName(gName)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)

                    if sX > 0 then
                        if name == "BP_SkellyFort_RitualSkullCloud_C" then
                            Nexnet_String("- FotD ["..dist.."m] -", sX, sY, eventR, eventG, eventB, eventA, 15, 1)
                        elseif name == "BP_LegendSkellyFort_SkullCloud_C" then
                            Nexnet_String("- FoF ["..dist.."m] -", sX, sY, eventR, eventG, eventB, eventA, 15, 1)
                        elseif name == "BP_SkellyFort_SkullCloud_C" then
                            Nexnet_String("- Skeleton Fort ["..dist.."m] -", sX, sY, eventR, eventG, eventB, eventA, 15, 1)
                        elseif name == "BP_SkellyShip_ShipCloud_C" then
                            Nexnet_String("- Skeleton Fleet ["..dist.."m] -", sX, sY, eventR, eventG, eventB, eventA, 15, 1)
                        elseif name == "BP_AshenLord_SkullCloud_C" then
                            Nexnet_String("- Ashen Winds ["..dist.."m] -", sX, sY, eventR, eventG, eventB, eventA, 15, 1)
                        elseif name == "BP_PhantomTornado_C" then
                            Nexnet_String("- Veil Tornado ["..dist.."m] -", sX, sY, eventR, eventG, eventB, eventA, 15, 1)
                        elseif name == "BP_GhostShip_TornadoCloud_C" then
                            Nexnet_String("- Ghost Fleet ["..dist.."m] -", sX, sY, eventR, eventG, eventB, eventA, 15, 1)
                        end
                    end
                end
            end
        end
    end

    if booty == -1 then
        booty = Nexnet_RegisterClass("Class Athena.BootyProxy")
    end
    if valuableToggle == true or kegToggle == true or emissaryFlagToggle == true or goldHoarderKeyToggle == true or shipValToggle == true then
        if booty > -1 then
            local num = Nexnet_GetActorCount(booty)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(booty, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    gName = Nexnet_GetActorName(booty, i)
                    name = parseName(gName)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)
                    distFromShip = math.floor(math.sqrt((shipPosX - x)^2 + (shipPosY - y)^2)/100)
                    
                    if x ~= 0 and y ~= 0 then
                        if sX > 0 then
                            if kegToggle == true then
                                if name == "BP_MerchantCrate_PirateLegendBigGunpowderBarrelProxy_C" then
                                    Nexnet_String("Athena Keg ["..dist.."m]", sX, sY, kegR, kegG, kegB, kegA, 15, 1)
                                elseif name == "BP_MerchantCrate_BigGunpowderBarrelProxy_C" then
                                    Nexnet_String("Stronghold Keg ["..dist.."m]", sX, sY, kegR, kegG, kegB, kegA, 15, 1)
                                elseif name == "BP_MerchantCrate_GunpowderBarrelProxy_C" then
                                    Nexnet_String("Powder Keg ["..dist.."m]", sX, sY, kegR, kegG, kegB, kegA, 15, 1)
                                end
                            end
                            
                            if valuableToggle == true then
                                if name == "BP_GoldhoarderSkull_Proxy_C" then
                                    Nexnet_String("Gold Hoarder Skull ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_ReapersBounty_Proxy_C" or name == "BP_FortReapersBountyChest_Proxy_C" then
                                    Nexnet_String("Reaper's Bounty ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_ReapersChest_Proxy_C" or name == "BP_FortReapersChest_Proxy_C" then
                                    Nexnet_String("Reaper's Chest ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_AshenWindsSkull_Proxy_C" then
                                    Nexnet_String("Ashen Winds Skull ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_TreasureChest_Vault_Proxy_C" then
                                    Nexnet_String("Chest of Tributes ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_SkullOfDestiny_Proxy_C" then
                                    Nexnet_String("Skull of Destiny ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_Wondrous_ItemInfo_C" then
                                    Nexnet_String("Box of Wondrous Secrets ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_TreasureChest_Proxy_ChestofFortune_C" then
                                    Nexnet_String("Chest of Fortune ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_TreasureChest_Proxy_PirateLegend_C" then
                                    Nexnet_String("Athena Chest ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_TreasureChest_Proxy_PirateLegend_DVR_C" then
                                    Nexnet_String("Ashen Athena Chest ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                end
                            end
                            
                            if emissaryFlagToggle == true then
                                if name == "BP_EmissaryFlotsam_AthenasFortune_Rank5_Proxy_C" then
                                    Nexnet_String("Athena's Flag Grade 5 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_AthenasFortune_Rank4_Proxy_C" then
                                    Nexnet_String("Athena's Flag Grade 4 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_AthenasFortune_Rank3_Proxy_C" then
                                    Nexnet_String("Athena's Flag Grade 3 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_AthenasFortune_Rank2_Proxy_C" then
                                    Nexnet_String("Athena's Flag Grade 2 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_AthenasFortune_Proxy_C" then
                                    Nexnet_String("Athena's Flag Grade 1 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                    
                                elseif name == "BP_EmissaryFlotsam_GoldHoarders_Rank5_Proxy_C" then
                                    Nexnet_String("Gold Hoarder Flag Grade 5 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_GoldHoarders_Rank4_Proxy_C" then 
                                    Nexnet_String("Gold Hoarder Flag Grade 4 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_GoldHoarders_Rank3_Proxy_C" then
                                    Nexnet_String("Gold Hoarder Flag Grade 3 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_GoldHoarders_Rank2_Proxy_C" then
                                    Nexnet_String("Gold Hoarder Flag Grade 2 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_GoldHoarders_Proxy_C" then
                                    Nexnet_String("Gold Hoarder Flag Grade 1 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                    
                                elseif name == "BP_EmissaryFlotsam_OrderOfSouls_Rank5_Proxy_C" then
                                    Nexnet_String("Order of Souls Flag Grade 5 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_OrderOfSouls_Rank4_Proxy_C" then
                                    Nexnet_String("Order of Souls Flag Grade 4 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_OrderOfSouls_Rank3_Proxy_C" then
                                    Nexnet_String("Order of Souls Flag Grade 3 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_OrderOfSouls_Rank2_Proxy_C" then
                                    Nexnet_String("Order of Souls Flag Grade 2 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_OrderOfSouls_Rank1_Proxy_C" then
                                    Nexnet_String("Order of Souls Flag Grade 1 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                    
                                elseif name == "BP_EmissaryFlotsam_Reapers_Rank5_Proxy_C" then
                                    Nexnet_String("Reaper Flag Grade 5 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_Reapers_Rank4_Proxy_C" then
                                    Nexnet_String("Reaper Flag Grade 4 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_Reapers_Rank3_Proxy_C" then
                                    Nexnet_String("Reaper Flag Grade 3 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_Reapers_Rank2_Proxy_C" then 
                                    Nexnet_String("Reaper Flag Grade 2 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_Reapers_Proxy_C" then
                                    Nexnet_String("Reaper Flag Grade 1 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                    
                                elseif name == "BP_EmissaryFlotsam_MerchantAlliance_Rank5_Proxy_C" then 
                                    Nexnet_String("Merchant Flag Grade 5 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_MerchantAlliance_Rank4_Proxy_C" then
                                    Nexnet_String("Merchant Flag Grade 4 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_MerchantAlliance_Rank3_Proxy_C" then
                                    Nexnet_String("Merchant Flag Grade 3 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_MerchantAlliance_Rank2_Proxy_C" then
                                    Nexnet_String("Merchant Flag Grade 2 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                elseif name == "BP_EmissaryFlotsam_MerchantAlliance_Proxy_C" then
                                    Nexnet_String("Merchant Flag Grade 1 ["..dist.."m]", sX, sY, emissaryR, emissaryG, emissaryB, emissaryA, 15, 1)
                                end
                            end
                        end    
                        if goldHoarderKeyToggle == true then
                            if name == "BP_Totem_GoldShark_Proxy_C" then
                                Nexnet_String("Kraken's Fall Gold Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_SilverShark_Proxy_C" then
                                Nexnet_String("Kraken's Fall Silver Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_StoneShark_Proxy_C" then
                                Nexnet_String("Kraken's Fall Stone Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                                    
                            elseif name == "BP_Totem_GoldBoar_Proxy_C" then
                                Nexnet_String("Devil's Ridge Gold Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_SilverBoar_Proxy_C" then
                                Nexnet_String("Devil's Ridge Silver Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_StoneBoar_Proxy_C" then
                                Nexnet_String("Devil's Ridge Stone Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                                
                            elseif name == "BP_Totem_GoldMoon_Proxy_C" then
                                Nexnet_String("Crescent Isle Gold Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_SilverMoon_Proxy_C" then
                                Nexnet_String("Crescent Isle Silver Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_StoneMoon_Proxy_C" then
                                Nexnet_String("Crescent Isle Stone Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                                
                            elseif name == "BP_Totem_GoldSnake_Proxy_C" then
                                Nexnet_String("Mermaid's Hideaway Gold Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_SilverSnake_Proxy_C" then
                                Nexnet_String("Mermaid's Hideaway Silver Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)    
                            elseif name == "BP_Totem_StoneSnake_Proxy_C" then
                                Nexnet_String("Mermaid's Hideaway Stone Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                                    
                            elseif name == "BP_Totem_GoldScarab_Proxy_C" then
                                Nexnet_String("Crook's Hollow Gold Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_SilverScarab_Proxy_C" then
                                Nexnet_String("Crook's Hollow Silver Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_StoneScarab_Proxy_C" then
                                Nexnet_String("Crook's Hollow Stone Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                                    
                            elseif name == "BP_Totem_GoldCrab_Proxy_C" then
                                Nexnet_String("N-13 Gold Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_SilverCrab_Proxy_C" then
                                Nexnet_String("N-13 Silver Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_StoneCrab_Proxy_C" then
                                Nexnet_String("N-13 Stone Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                                    
                            elseif name == "BP_Totem_GoldEagle_Proxy_C" then
                                Nexnet_String("Fetcher's Rest Gold Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_SilverEagle_Proxy_C" then
                                Nexnet_String("Fetcher's Rest Silver Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_StoneEagle_Proxy_C" then
                                Nexnet_String("Fetcher's Rest Stone Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                                    
                                    
                            elseif name == "BP_Totem_GoldSun_Proxy_C" then
                                Nexnet_String("Ashen Reaches Gold Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_SilverSun_Proxy_C" then
                                Nexnet_String("Ashen Reaches Silver Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            elseif name == "BP_Totem_StoneSun_Proxy_C" then
                                Nexnet_String("Ashen Reaches Stone Key ["..dist.."m]", sX, sY, ghKeyR, ghKeyG, ghKeyB, ghKeyA, 15, 1)
                            end
                        end
                            
                        if shipValToggle == true then
                            if x ~= 0 and y ~= 0 then
                                if shipType == 1 then
                                    if distFromShip <= 20 and distFromShip > 0 then
                                        if playerShipDist <= 20 then
                                            for e = 0, 133, 1 do
                                                if name == giName[e] then
                                                    addToGTotal(giVal[e])
                                                end
                                            end
                                            for e = 0, 26, 1 do
                                                if name == diName[e] then
                                                    addToDTotal(diVal[e])
                                                end
                                            end
                                        end
                                    end
                                end
                                if shipType == 2 then
                                    if distFromShip <= 30 and distFromShip > 0 then
                                        if playerShipDist <= 30 then
                                            for e = 0, 131, 1 do
                                                if name == giName[e] then
                                                    addToGTotal(giVal[e])
                                                end
                                            end
                                            for e = 0, 26, 1 do
                                                if name == diName[e] then
                                                    addToDTotal(diVal[e])
                                                end
                                            end
                                        end
                                    end
                                end
                                if shipType == 3 then
                                    if distFromShip <= 35 and distFromShip > 0 then
                                        if playerShipDist <= 35 then
                                            for e = 0, 131, 1 do
                                                if name == giName[e] then
                                                    addToGTotal(giVal[e])
                                                end
                                            end
                                            for e = 0, 26, 1 do
                                                if name == diName[e] then
                                                    addToDTotal(diVal[e])
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if sharks == -1 then
        sharks = Nexnet_RegisterClass("Class Athena.SharkPawn")
    end
    if sharkToggle == true or sharkAlertToggle == true then
        if sharks > -1 then
            local num = Nexnet_GetActorCount(sharks)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(sharks, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)
                    if x ~= 0 and y ~= 0 then
                        if dist <= 50 then
                            if sharkToggle == true then
                                if sX > 0 then
                                    Nexnet_String("- Shark -", sX, sY, sharkR, sharkG, sharkB, sharkA, 15, 1)
                                end
                            end
                            if sharkAlertToggle == true then
                                if roundPosZ <= 300 then
                                    if sX <= 0 then
                                        Nexnet_String("! Shark ["..dist.."m] !", midX, midY + (i*25), sAlertR, sAlertG, sAlertB, sAlertA, 15, 1)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if merms == -1 then
        merms = Nexnet_RegisterClass("Class Athena.Mermaid")
    end
    if mermToggle == true then
        if merms > -1 then
            local num = Nexnet_GetActorCount(merms) 
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(merms, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)

                    if x ~= 0 and y ~= 0 then
                        if sX > 0 then
                            Nexnet_String("- Mermaid ["..dist.."m] -", sX, sY, mermR, mermG, mermB, mermA, 15, 1)
                        end
                    end
                end
            end
        end
    end

    if sirens == -1 then
        sirens = Nexnet_RegisterClass("Class Athena.SirenPawn")
    end
    if sirenToggle == true then
        if sirens > -1 then
            local num = Nexnet_GetActorCount(sirens)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(sirens, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)
                    if x ~= 0 and y ~= 0 then
                        if sX > 0 then
                            Nexnet_String("Siren ["..dist.."m]", sX, sY, sirenR, sirenG, sirenB, sirenA, 15, 1)
                        end
                    end
                end
            end
        end
    end

    if ammoPouches == -1 then
        ammoPouches = Nexnet_RegisterClass("Class Athena.AmmoPouchItemProxy")
    end
    if ammoPouchToggle == true then
        if ammoPouches > -1 then
            local num = Nexnet_GetActorCount(ammoPouches)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(ammoPouches, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)
                    if x ~= 0 and y ~= 0 then
                        if sX > 0 then
                            Nexnet_String("*", sX, sY, ammoR, ammoG, ammoB, ammoA, 5, 1)
                        end
                    end
                end
            end
        end
    end

    if ladders == -1 then
        ladders = Nexnet_RegisterClass("Class Athena.Ladder")
    end
    if ladderToggle == true then
        if ladders > -1 then
            local num = Nexnet_GetActorCount(ladders)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(ladders, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    gName = Nexnet_GetActorName(ladders, i)
                    name = parseName(gName)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)
                    if sX > 0 then
                        -- Nexnet_String(name.." ["..dist.."m]", sX, sY, 255, 255, 255, 255, 15, 1)
                        if name == "BP_SmallShipLadder_C" or  name == "BP_SmallShipLadder_02_C" or name == "BP_MediumShipLadder_C" or name == "BP_MediumShipLadder_02_C" or name == "BP_LargeShipLadder_C" or name == "BP_LargeShipLadder_02_C" then
                            if dist < 75 then
                                if posZ <= z + 50 then
                                    Nexnet_String("Ladder".." ["..dist.."m]", sX, sY, ladderR, ladderG, ladderB, ladderA, 15, 1)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    if islandToggle == true then
        for i = #islandN, 0, -1 do
            local sX, sY = Nexnet_WorldToScreen(islandX[i], islandY[i], islandZConst)
            dist = math.floor(math.sqrt((posX - islandX[i])^2 + (posY - islandY[i])^2)/100)
            local isOutpost = checkIfOutpost(islandN[i])
            if sX > 0 then
                if dist <= 2500 then
                    if isOutpost == true then
                        Nexnet_String(islandN[i].." ["..dist.."m]", sX, sY, outpostR, outpostG, outpostB, outpostA, 15, 1)
                    else
                        Nexnet_String(islandN[i].." ["..dist.."m]", sX, sY, islandR, islandG, islandB, islandA, 15, 1)
                    end
                elseif dist > 2500 and dist < 3500 then
                    if isOutpost == true then
                        Nexnet_String(islandN[i].." ["..dist.."m]", sX, sY, outpostR, outpostG, outpostB, outpostA - 100, 15, 1)
                    else
                        Nexnet_String(islandN[i].." ["..dist.."m]", sX, sY, islandR, islandG, islandB, islandA - 100, 15, 1)
                    end
                end
            end
        end
    end
    
    if ships == -1 then
        ships = Nexnet_RegisterClass("Class Athena.Ship")
    end
    if shipSpeedToggle == true or shipValToggle == true then
        if ships > -1 then
            local num = Nexnet_GetActorCount(ships)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(ships, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    local velocityX, velocityY = Nexnet_GetActorVelocity(ships, i)
                    local speed = (math.sqrt(velocityX^2 + velocityY^2) / 100)
                    local newvel = string.format("%.0f",speed)
                    gName = Nexnet_GetActorName(ships, i)
                    name = parseName(gName)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)
                    
                    if shipSpeedToggle == true then
                        if speed < 1 then
                            Nexnet_String("Not Moving", sX, sY - 25 , speedR, speedG, speedB, speedA, 15, 1)
                        else
                            Nexnet_String("Speed : [" .. newvel .. "m]", sX, sY - 25 , speedR, speedG, speedB, speedA, 15, 1)
                        end
                    end
                    
                    if shipValToggle == true then
                        if name == "BP_SmallShipTemplate_C" then
                            if dist < 20 then -- Sloop Bounds
                                shipType = 1
                                shipPosX, shipPosY, shipPosZ = x, y, z
                            elseif dist >= 20 then
                                currentShipGVal = 0
                                currentShipDVal = 0
                            end
                        elseif name == "BP_MediumShipTemplate_C" then
                            if dist < 30 then -- Brig Bounds
                                shipType = 2
                                shipPosX, shipPosY, shipPosZ = x, y, z
                            elseif dist >= 30 then
                                currentShipGVal = 0
                                currentShipDVal = 0
                            end
                        elseif name == "BP_LargeShipTemplate_C" then
                            if dist < 35 then -- Galleon Bounds
                                shipType = 3
                                shipPosX, shipPosY, shipPosZ = x, y, z
                            elseif dist >= 35 then
                                currentShipGVal = 0
                                currentShipDVal = 0
                            end
                        end
                    end
                end
            end
        end
    end
    
    if fortKeys == -1 then
        fortKeys = Nexnet_RegisterClass("Class Athena.StrongholdKeyProxy")
    end
    if fortKeyToggle == true then
        if fortKeys > -1 then
            local num = Nexnet_GetActorCount(fortKeys)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(fortKeys, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    gName = Nexnet_GetActorName(fortKeys, i)
                    name = parseName(gName)
                    if x ~= 0 and y ~= 0 then
                        if sX > 0 then
                            if name == "BP_FotD_StrongholdKey_Proxy_C" then
                                Nexnet_String("FotD Key ["..dist.."m]", sX, sY, fortKeyR, fortKeyG, fortKeyB, fortKeyA, 15, 1)
                            elseif name == "BP_LegendaryFort_StrongholdKey_Proxy_C" then
                                Nexnet_String("FoF Key ["..dist.."m]", sX, sY, fortKeyR, fortKeyG, fortKeyB, fortKeyA, 15, 1)
                            elseif name == "BP_StrongholdKey_Proxy_C" then
                                Nexnet_String("Stronghold Key ["..dist.."m]", sX, sY, fortKeyR, fortKeyG, fortKeyB, fortKeyA, 15, 1)
                            end
                        end
                    end
                end
            end
        end
    end
    
    if shipValToggle == true then
        playerShipDist = math.floor(math.sqrt((posX - shipPosX)^2 + (posY - shipPosY)^2)/100)
        
        if shipType == 1 and playerShipDist < 20 then
            Nexnet_String("Gold: "..currentShipGVal, midX, panY - 40, 255, 255, 0, 255, 15, 1)
            Nexnet_String("Doubloons: "..currentShipDVal, midX, panY - 22, 0, 255, 255, 255, 15, 1)
        end
        if shipType == 2 and playerShipDist < 30 then
            Nexnet_String("Gold: "..currentShipGVal, midX, panY - 40, 255, 255, 0, 255, 15, 1)
            Nexnet_String("Doubloons: "..currentShipDVal, midX, panY - 22, 0, 255, 255, 255, 15, 1)
        end
        if shipType == 3 and playerShipDist < 35 then
            Nexnet_String("Gold: "..currentShipGVal, midX, panY - 40, 255, 255, 0, 255, 15, 1)
            Nexnet_String("Doubloons: "..currentShipDVal, midX, panY - 22, 0, 255, 255, 255, 15, 1)
        end
        currentShipGVal = 0
        currentShipDVal = 0
    end
end

function onKeyPressed(key)
    if key == 36 then -- HOME KEY (OPENS THE MENU)
        pToggle = not pToggle
    end
    
    --[[
    -- ONLY FOR DEBUGGING/ADDING SHIT
    if key == 17 then -- CTRL KEY (RELOADS THE MENU)
        Nexnet_Reload()
    end
    --]]
end

function onKeyReleased(key)

end

-- THIS MENU WAS MADE BY @Izodope#9936
-- Please don't be a jackass, give credit where it's due.

--[[
    CREDITS :
        @DevGrab#0815 - Adding Features, GUI Help, & Emotional Support
        @Waffle#0758 - Mermaid Script
        @atom.#2135 - Ship Speed Script
        @! Camo#0001 - Testing & Telling me I have a skill issue
        @Juke#7394 - Island ESP Bitchwork
--]]