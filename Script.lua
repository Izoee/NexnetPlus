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

-- Menu Size and Location
pX, pY = 1650, 75 -- Change this to change the default position of the menu
oW, oH = 200, 372
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
islandX[0] = 497395; islandY[0] = -327061; islandN[0] = 'Traitors Fate Forteress'
islandX[1] = 387505; islandY[1] = -304825; islandN[1] = 'Plunderers Plight'
islandX[2] = 446022; islandY[2] = -206311; islandN[2] = 'Galleons Grave Outpost'
islandX[3] = 300976; islandY[3] = -233652; islandN[3] = 'Sunken Grove'
islandX[4] = 441512; islandY[4] = -369299; islandN[4] = 'Black Water Enclave'
islandX[5] = 336077; islandY[5] = -117935; islandN[5] = 'Skull Keep'
islandX[6] = 432052; islandY[6] = -90803; islandN[6] = 'Tri-Rock Isle'
islandX[7] = 499368; islandY[7] = -36450; islandN[7] = 'Liars Backbone'
islandX[8] = 507858; islandY[8] = -101328; islandN[8] = 'Three Paces East Seapost'
islandX[9] = 680209; islandY[9] = 28414; islandN[9] = 'Flintlock Peninsula'
islandX[10] = 377950; islandY[10] = -460878; islandN[10] = 'Marauders Arch '
islandX[11] = 443559; islandY[11] = 62449; islandN[11] = 'Krakens Fall'
islandX[12] = 140510; islandY[12] = -64866; islandN[12] = 'Shipwreck Bay'
islandX[13] = 151885; islandY[13] = -217786; islandN[13] = 'Dagger Tooth Outpost'
islandX[14] = 244097; islandY[14] = -138150; islandN[14] = 'Isle of Last Words'
islandX[15] = 167832; islandY[15] = -400381; islandN[15] = 'Old Faithful Isle'
islandX[16] = 381084; islandY[16] = -362667; islandN[16] = 'Shrine of Hungering'
islandX[17] = 308923; islandY[17] = -359532; islandN[17] = 'Shark Fin Camp'
islandX[18] = 267942; islandY[18] = -397816; islandN[18] = 'Wild Treasure Store'
islandX[19] = 225601; islandY[19] = -313671; islandN[19] = 'Blind Man Lagoon'
islandX[20] = 68944; islandY[20] = -316121; islandN[20] = 'Krakens Watch Tower'
islandX[21] = -45347; islandY[21] = -326147; islandN[21] = 'Royal Crest Fortress'
islandX[22] = 31092; islandY[22] = -414643; islandN[22] = 'Scurvey Isley'
islandX[23] = 98942; islandY[23] = -469294; islandN[23] = 'Treasury of the Secret Wilds'
islandX[24] = 269829; islandY[24] = -451366; islandN[24] = 'Black Sand Atoll'
islandX[25] = -91772; islandY[25] = -207283; islandN[25] = 'Hidden Spring Keep'
islandX[26] = 14876; islandY[26] = -141302; islandN[26] = 'K9 Isle'
islandX[27] = -155339; islandY[27] = -307117; islandN[27] = 'Lone Cove'
islandX[28] = -183245; islandY[28] = -388273; islandN[28] = 'Shrine of the Coral Tomb'
islandX[29] = -198353; islandY[29] = -447625; islandN[29] = 'Salty Sands'
islandX[30] = -110660; islandY[30] = -408053; islandN[30] = 'Picaroon Palms'
islandX[31] = -307407; islandY[31] = -467892; islandN[31] = 'Smugglers Bay'
islandX[32] = -249297; islandY[32] = -369388; islandN[32] = 'Boulder Cay'
islandX[33] = -376311; islandY[33] = -377337; islandN[33] = 'Sandy Shallows'
islandX[34] = -295343; islandY[34] = -260705; islandN[34] = 'Sanctuary Outpost'
islandX[35] = -442964; islandY[35] = -281912; islandN[35] = 'Keel Haul Fort'
islandX[36] = -488360; islandY[36] = -396989; islandN[36] = 'Sailors Bounty'
islandX[37] = -436438; islandY[37] = -499281; islandN[37] = 'Treasury of Sunken Shores'
islandX[38] = -500797; islandY[38] = -245909; islandN[38] = 'Spoils of Plenty Store'
islandX[39] = -396814; islandY[39] = -185474; islandN[39] = 'Rapier Cay'
islandX[40] = -502584; islandY[40] = -130358; islandN[40] = 'Crescent Isle'
islandX[41] = -390068; islandY[41] = -55461; islandN[41] = 'New Golden Sands Outpost'
islandX[42] = -495854; islandY[42] = -11818; islandN[42] = 'Sea Dogs Rest'
islandX[43] = -550529; islandY[43] = -14183; islandN[43] = 'Imperial Crown Fortress'
islandX[44] = -504272; islandY[44] = 97442; islandN[44] = 'Mermaids Hideaway'
islandX[45] = -395572; islandY[45] = 60912; islandN[45] = 'Lagoon of Whispers'
islandX[46] = -89466; islandY[46] = 49335; islandN[46] = 'Reapers Hideout'
islandX[47] = -268149; islandY[47] = 55395; islandN[47] = 'Wanderers Refuge'
islandX[48] = -247097; islandY[48] = -96161; islandN[48] = 'Cannon Cove'
islandX[49] = -197773; islandY[49] = -200711; islandN[49] = 'Lonely Isle'
islandX[50] = -141763; islandY[50] = -117577; islandN[50] = 'Rum Runner Isle'
islandX[51] = -149912; islandY[51] = -61976; islandN[51] = 'North Star Sea Post'
islandX[52] = -176038; islandY[52] = -14527; islandN[52] = 'Twin Groves'
islandX[53] = 30789; islandY[53] = 15754; islandN[53] = 'Sea Dogs Tavern'
islandX[54] = 187330; islandY[54] = 8591; islandN[54] = 'Shrine of Flooded Embrace'
islandX[55] = 266789; islandY[55] = -17657; islandN[55] = 'Crooked Mast'
islandX[56] = 376462; islandY[56] = -19008; islandN[56] = 'Shiver Retreat'
islandX[57] = 335006; islandY[57] = 67601; islandN[57] = 'Shark Tooth Key'
islandX[58] = 341037; islandY[58] = 141763; islandN[58] = 'Mercys End Fortress'
islandX[59] = 341037; islandY[59] = 141763; islandN[59] = 'N13'
islandX[60] = 681414; islandY[60] = 30865; islandN[60] = 'Fetchers Rest'
islandX[61] = 847028; islandY[61] = 24400; islandN[61] = 'Brians Bazaar'
islandX[62] = 916428; islandY[62] = 4520; islandN[62] = 'Molten Sands Fortress'
islandX[63] = 836805; islandY[63] = 93693; islandN[63] = 'Cursewater Shores'
islandX[64] = 862088; islandY[64] = 263623; islandN[64] = 'Rubys Fall'
islandX[65] = 695105; islandY[65] = 322347; islandN[65] = 'Morrows Peak Outpost'
islandX[66] = 596063; islandY[66] = 262161; islandN[66] = 'Forsaken Brink'
islandX[67] = 619397; islandY[67] = 168321; islandN[67] = 'Cinder Islet'
islandX[68] = 830881; islandY[68] = 394511; islandN[68] = 'Brimstone Rock'
islandX[69] = 940301; islandY[69] = 407962; islandN[69] = 'Glowstone Cay'
islandX[70] = 879758; islandY[70] = 506121; islandN[70] = 'Magmas Tide'
islandX[71] = 757005; islandY[71] = 546313; islandN[71] = 'Devils Thirst'
islandX[72] = 611017; islandY[72] = 564837; islandN[72] = 'Roaring Sands'
islandX[73] = 670707; islandY[73] = 656844; islandN[73] = 'Ashen Reaches'
islandX[74] = 325006; islandY[74] = 452559; islandN[74] = 'Devils Ridge'
islandX[75] = 242891; islandY[75] = 346706; islandN[75] = 'Crows Nest Fortress'
islandX[76] = 211099; islandY[76] = 444881; islandN[76] = 'Mutineer Rock'
islandX[77] = 187170; islandY[77] = 502692; islandN[77] = 'Shrine of Ancient Tears'
islandX[78] = 109205; islandY[78] = 480884; islandN[78] = 'Thieves Haven'
islandX[79] = 24384; islandY[79] = 568480; islandN[79] = 'Old Brinstone Fortress'
islandX[80] = 4912; islandY[80] = 512632; islandN[80] = 'Booty isle'
islandX[81] = 605728; islandY[81] = 470883; islandN[81] = 'Roaring Traders'
islandX[82] = 700238; islandY[82] = 459892; islandN[82] = 'Flames End'
islandX[83] = 369477; islandY[83] = 313845; islandN[83] = 'Ancient Spire Outpost'
islandX[84] = 146760; islandY[84] = 371368; islandN[84] = 'Cutlass Cay'
islandX[85] = 78968; islandY[85] = 319956; islandN[85] = 'Paradise Spring'
islandX[86] = -18130; islandY[86] = 381961; islandN[86] = 'Plunder Outpost'
islandX[87] = -77747; islandY[87] = 481468; islandN[87] = 'Lookout Point'
islandX[88] = -179137; islandY[88] = 456515; islandN[88] = 'Shark Bait Cove'
islandX[89] = -212180; islandY[89] = 382002; islandN[89] = 'Shrine of Tribute'
islandX[90] = -140227; islandY[90] = 338323; islandN[90] = 'Lost Gold Fort'
islandX[91] = -265455; islandY[91] = 332385; islandN[91] = 'The Finest Trading Post'
islandX[92] = -290473; islandY[92] = 400309; islandN[92] = 'Old Salts Atoll'
islandX[93] = -300255; islandY[93] = 460275; islandN[93] = 'Ancient Gold Fortress'
islandX[94] = -361703; islandY[94] = 313736; islandN[94] = 'Discovery Rigde'
islandX[95] = -241502; islandY[95] = 255960; islandN[95] = 'Plunder Valley'
islandX[96] = -351128; islandY[96] = 160700; islandN[96] = 'Sailors Knot Stronghold'
islandX[97] = -424639; islandY[97] = 150931; islandN[97] = 'Shrine of Oceans Fortune'
islandX[98] = -157242; islandY[98] = 176150; islandN[98] = 'Treasury of the Lost Ancients'
islandX[99] = 5222; islandY[99] = 238993; islandN[99] = 'Snake Isle'
islandX[100] = -106153; islandY[100] = 242422; islandN[100] = 'Chicken Isle'
islandX[101] = 71001; islandY[101] = 232711; islandN[101] = 'Stephens Spoils'
islandX[102] = 94017; islandY[102] = 155428; islandN[102] = 'Fort of the Damned'
islandX[103] = -6017; islandY[103] = 129194; islandN[103] = 'Castaway Isle'
islandX[104] = -88283; islandY[104] = 155235; islandN[104] = 'Fools Lagoon'
islandX[105] = 163885; islandY[105] = 246305; islandN[105] = 'Crooks Hollow'
islandX[106] = 275365; islandY[106] = 231924; islandN[106] = 'Barnacle Cay'

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
            if parsedName == "Outpost" or parsedName == "Hideout" then
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

        Nexnet_Rect(eButtonX, eButtonY, eButtonW, eButtonH, optionR, optionB, optionG,optionA)
        Nexnet_String("Close", eBCX, eBCY, optionR, optionB, optionG,optionA, 15, 0)
        Nexnet_String("v1.2.1", pX + pW - 20, pY + pH - 17, 177, 177, 177, 255, 5, 0)
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
    if valuableToggle == true or kegToggle == true or emissaryFlagToggle == true or goldHoarderKeyToggle == true then
        if booty > -1 then
            local num = Nexnet_GetActorCount(booty)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(booty, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    gName = Nexnet_GetActorName(booty, i)
                    name = parseName(gName)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)
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
                                elseif name == "BP_TreasureChest_Proxy_PirateLegend_DVR_C" then
                                    Nexnet_String("Ashen Athena Chest ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_TreasureChest_Proxy_ChestofFortune_C" then
                                    Nexnet_String("Chest of Fortune ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
                                elseif name == "BP_TreasureChest_Proxy_PirateLegend_C" then
                                    Nexnet_String("Athena Chest ["..dist.."m]", sX, sY, valuableR, valuableG, valuableB, valuableA, 15, 1)
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
    if shipSpeedToggle == true then
        if ships > -1 then
            local num = Nexnet_GetActorCount(ships)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(ships, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    local velocityX, velocityY = Nexnet_GetActorVelocity(ships, i)
                    local speed = (math.sqrt(velocityX^2 + velocityY^2) / 100)
                    local newvel = string.format("%.0f",speed)
                    if speed < 1 then
                        Nexnet_String("Not Moving", sX, sY - 25 , speedR, speedG, speedB, speedA, 15, 1)
                    else
                        Nexnet_String("Speed : [" .. newvel .. "m]", sX, sY - 25 , speedR, speedG, speedB, speedA, 15, 1)
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