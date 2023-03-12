-- HOME - Opens the menu
-- CLICK ANYWHERE OTHER THAN THE MENU - Closes the menu and resets its position



--[[
    CREDITS :
        @Izodope#9936 - Main Creator
        @DevGrab#0815 - Adding Functions, GUI Help, & Emotional Support
        @Waffle#0758 - Mermaid Script
        @atom.#2135 - Random help here and there
        @! Camo#0001 - Testing & Telling me I have a skill issue
        @Juke#7394 - Island ESP (the bitchwork)
--]]

-- Menu Toggle
pToggle = false

-- ESP Toggles
-- You can change the "false" for each individual one to true
-- and save the file for your preferred default settings
eventToggle = false
kegToggle = false
chestToggle = false
sharkToggle = false
sharkAlertToggle = false
megToggle = false
mermToggle = false
sirenToggle = false
ammoPouchToggle = false
ladderToggle = false
islandToggle = false

-- Mouse Position
mX, mY = 0, 0
cMX, cMY = 0, 0
movingMenu = false

-- Panel Size and Location
pX, pY = 1650, 75 -- Change this to change the default location of the menu
oW, oH = 200, 310
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

-- Clicks
leftDown = false

-- Colors
fA = 128 -- Fill Transparency
fC = 10 -- Fill Color
bR, bG, bB, bA = 255, 255, 255, 255 -- Border RGB
tR, tG, tB, tA = 255, 255, 255, 255 -- Text RGBA]

-- Island Arrays
islandX = {}
islandY = {}
islandZConst = 15000
islandN = {}

-- Declare Variables
islandX[0] = 497395
islandY[0] = -327061
islandN[0] = 'Traitors Fate Forteress'
islandX[1] = 387505
islandY[1] = -304825
islandN[1] = 'Plunderers Plight'
islandX[2] = 446022
islandY[2] = -206311
islandN[2] = 'Galleons Grave Outpost'
islandX[3] = 300976
islandY[3] = -233652
islandN[3] = 'Sunken Grove'
islandX[4] = 441512
islandY[4] = -369299
islandN[4] = 'Black Water Enclave'
islandX[5] = 336077
islandY[5] = -117935
islandN[5] = 'Skull Keep'
islandX[6] = 432052
islandY[6] = -90803
islandN[6] = 'Tri-Rock Isle'
islandX[7] = 499368
islandY[7] = -36450
islandN[7] = 'Liars Backbone'
islandX[8] = 507858
islandY[8] = -101328
islandN[8] = 'Three Paces East Seapost'
islandX[9] = 680209
islandY[9] = 28414
islandN[9] = 'Flintlock Peninsula'
islandX[10] = 377950
islandY[10] = -460878
islandN[10] = 'Marauders Arch '
islandX[11] = 443559
islandY[11] = 62449
islandN[11] = 'Krakens Fall'
islandX[12] = 140510
islandY[12] = -64866
islandN[12] = 'Shipwreck Bay'
islandX[13] = 151885
islandY[13] = -217786
islandN[13] = 'Dagger Tooth Outpost'
islandX[14] = 244097
islandY[14] = -138150
islandN[14] = 'Isle of Last Words'
islandX[15] = 167832
islandY[15] = -400381
islandN[15] = 'Old Faithful Isle'
islandX[16] = 381084
islandY[16] = -362667
islandN[16] = 'Shrine of Hungering'
islandX[17] = 308923
islandY[17] = -359532
islandN[17] = 'Shark Fin Camp'
islandX[18] = 267942
islandY[18] = -397816
islandN[18] = 'Wild Treasure Store'
islandX[19] = 225601
islandY[19] = -313671
islandN[19] = 'Blind Man Lagoon'
islandX[20] = 68944
islandY[20] = -316121
islandN[20] = 'Krakens Watch Tower'
islandX[21] = -45347
islandY[21] = -326147
islandN[21] = 'Royal Crest Fortress'
islandX[22] = 31092
islandY[22] = -414643
islandN[22] = 'Scurvey Isley'
islandX[23] = 98942
islandY[23] = -469294
islandN[23] = 'Treasury of the Secret Wilds'
islandX[24] = 269829
islandY[24] = -451366
islandN[24] = 'Black Sand Atoll'
islandX[25] = -91772
islandY[25] = -207283
islandN[25] = 'Hidden Spring Keep'
islandX[26] = 14876
islandY[26] = -141302
islandN[26] = 'K9 Isle'
islandX[27] = -155339
islandY[27] = -307117
islandN[27] = 'Lone Cove'
islandX[28] = -183245
islandY[28] = -388273
islandN[28] = 'Shrine of the Coral Tomb'
islandX[29] = -198353
islandY[29] = -447625
islandN[29] = 'Salty Sands'
islandX[30] = -110660
islandY[30] = -408053
islandN[30] = 'Picaroon Palms'
islandX[31] = -307407
islandY[31] = -467892
islandN[31] = 'Smugglers Bay'
islandX[32] = -249297
islandY[32] = -369388
islandN[32] = 'Boulder Cay'
islandX[33] = -376311
islandY[33] = -377337
islandN[33] = 'Sandy Shallows'
islandX[34] = -295343
islandY[34] = -260705
islandN[34] = 'Sanctuary Outpost'
islandX[35] = -442964
islandY[35] = -281912
islandN[35] = 'Keel Haul Fort'
islandX[36] = -488360
islandY[36] = -396989
islandN[36] = 'Sailors Bounty'
islandX[37] = -436438
islandY[37] = -499281
islandN[37] = 'Treasury of Sunken Shores'
islandX[38] = -500797
islandY[38] = -245909
islandN[38] = 'Spoils of Plenty Store'
islandX[39] = -396814
islandY[39] = -185474
islandN[39] = 'Rapier Cay'
islandX[40] = -502584
islandY[40] = -130358
islandN[40] = 'Crescent Isle'
islandX[41] = -390068
islandY[41] = -55461
islandN[41] = 'New Golden Sands Outpost'
islandX[42] = -495854
islandY[42] = -11818
islandN[42] = 'Sea Dogs Rest'
islandX[43] = -550529
islandY[43] = -14183
islandN[43] = 'Imperial Crown Fortress'
islandX[44] = -504272
islandY[44] = 97442
islandN[44] = 'Mermaids Hideaway'
islandX[45] = -395572
islandY[45] = 60912
islandN[45] = 'Lagoon of Whispers'
islandX[46] = -89466
islandY[46] = 49335
islandN[46] = 'Reapers Hideout'
islandX[47] = -268149
islandY[47] = 55395
islandN[47] = 'Wanderers Refuge'
islandX[48] = -247097
islandY[48] = -96161
islandN[48] = 'Cannon Cove'
islandX[49] = -197773
islandY[49] = -200711
islandN[49] = 'Lonely Isle'
islandX[50] = -141763
islandY[50] = -117577
islandN[50] = 'Rum Runner Isle'
islandX[51] = -149912
islandY[51] = -61976
islandN[51] = 'North Star Sea Post'
islandX[52] = -176038
islandY[52] = -14527
islandN[52] = 'Twin Groves'
islandX[53] = 30789
islandY[53] = 15754
islandN[53] = 'Sea Dogs Tavern'
islandX[54] = 187330
islandY[54] = 8591
islandN[54] = 'Shrine of Flooded Embrace'
islandX[55] = 266789
islandY[55] = -17657
islandN[55] = 'Crooked Mast'
islandX[56] = 376462
islandY[56] = -19008
islandN[56] = 'Shiver Retreat'
islandX[57] = 335006
islandY[57] = 67601
islandN[57] = 'Shark Tooth Key'
islandX[58] = 341037
islandY[58] = 141763
islandN[58] = 'Mercys End Fortress'
islandX[59] = 341037
islandY[59] = 141763
islandN[59] = 'N13'
islandX[60] = 681414
islandY[60] = 30865
islandN[60] = 'Fetchers Rest'
islandX[61] = 847028
islandY[61] = 24400
islandN[61] = 'Brians Bazaar'
islandX[62] = 916428
islandY[62] = 4520
islandN[62] = 'Molten Sands Fortress'
islandX[63] = 836805
islandY[63] = 93693
islandN[63] = 'Cursewater Shores'
islandX[64] = 862088
islandY[64] = 263623
islandN[64] = 'Rubys Fall'
islandX[65] = 695105
islandY[65] = 322347
islandN[65] = 'Morrows Peak Outpost'
islandX[66] = 596063
islandY[66] = 262161
islandN[66] = 'Forsaken Brink'
islandX[67] = 619397
islandY[67] = 168321
islandN[67] = 'Cinder Islet'
islandX[68] = 830881
islandY[68] = 394511
islandN[68] = 'Brimstone Rock'
islandX[69] = 940301
islandY[69] = 407962
islandN[69] = 'Glowstone Cay'
islandX[70] = 879758
islandY[70] = 506121
islandN[70] = 'Magmas Tide'
islandX[71] = 757005
islandY[71] = 546313
islandN[71] = 'Devils Thirst'
islandX[72] = 611017
islandY[72] = 564837
islandN[72] = 'Roaring Sands'
islandX[73] = 670707
islandY[73] = 656844
islandN[73] = 'Ashen Reaches'
islandX[74] = 325006
islandY[74] = 452559
islandN[74] = 'Devils Ridge'
islandX[75] = 242891
islandY[75] = 346706
islandN[75] = 'Crows Nest Fortress'
islandX[76] = 211099
islandY[76] = 444881
islandN[76] = 'Mutineer Rock'
islandX[77] = 187170
islandY[77] = 502692
islandN[77] = 'Shrine of Ancient Tears'
islandX[78] = 109205
islandY[78] = 480884
islandN[78] = 'Thieves Haven'
islandX[79] = 24384
islandY[79] = 568480
islandN[79] = 'Old Brinstone Fortress'
islandX[80] = 4912
islandY[80] = 512632
islandN[80] = 'Booty isle'
islandX[81] = 605728
islandY[81] = 470883
islandN[81] = 'Roaring Traders'
islandX[82] = 700238
islandY[82] = 459892
islandN[82] = 'Flames End'
islandX[83] = 369477
islandY[83] = 313845
islandN[83] = 'Ancient Spire Outpost'
islandX[84] = 146760
islandY[84] = 371368
islandN[84] = 'Cutlass Cay'
islandX[85] = 78968
islandY[85] = 319956
islandN[85] = 'Paradise Spring'
islandX[86] = -18130
islandY[86] = 381961
islandN[86] = 'Plunder Outpost'
islandX[87] = -77747
islandY[87] = 481468
islandN[87] = 'Lookout Point'
islandX[88] = -179137
islandY[88] = 456515
islandN[88] = 'Shark Bait Cove'
islandX[89] = -212180
islandY[89] = 382002
islandN[89] = 'Shrine of Tribute'
islandX[90] = -140227
islandY[90] = 338323
islandN[90] = 'Lost Gold Fort'
islandX[91] = -265455
islandY[91] = 332385
islandN[91] = 'The Finest Trading Post'
islandX[92] = -290473
islandY[92] = 400309
islandN[92] = 'Old Salts Atoll'
islandX[93] = -300255
islandY[93] = 460275
islandN[93] = 'Ancient Gold Fortress'
islandX[94] = -361703
islandY[94] = 313736
islandN[94] = 'Discovery Rigde'
islandX[95] = -241502
islandY[95] = 255960
islandN[95] = 'Plunder Valley'
islandX[96] = -351128
islandY[96] = 160700
islandN[96] = 'Sailors Knot Stronghold'
islandX[97] = -424639
islandY[97] = 150931
islandN[97] = 'Shrine of Oceans Fortune'
islandX[98] = -157242
islandY[98] = 176150
islandN[98] = 'Treasury of the Lost Ancients'
islandX[99] = 5222
islandY[99] = 238993
islandN[99] = 'Snake Isle'
islandX[100] = -106153
islandY[100] = 242422
islandN[100] = 'Chicken Isle'
islandX[101] = 71001
islandY[101] = 232711
islandN[101] = 'Stephens Spoils'
islandX[102] = 94017
islandY[102] = 155428
islandN[102] = 'Fort of the Damned'
islandX[103] = -6017
islandY[103] = 129194
islandN[103] = 'Castaway Isle'
islandX[104] = -88283
islandY[104] = 155235
islandN[104] = 'Fools Lagoon'
islandX[105] = 163885
islandY[105] = 246305
islandN[105] = 'Crooks Hollow'
islandX[106] = 275365
islandY[106] = 231924
islandN[106] = 'Barnacle Cay'


-- Classes
events = -1
kegs = -1
athenaChests = -1
sharks = -1
megs = -1
merms = -1
sirens = -1
ammoPouches = -1
ladders = -1

function checkBounds()
    -- Toggles
    if mX >= eButtonX and mX <= eButtonX + eButtonW then
        if mY >= eButtonY and mY <= eButtonY + eButtonH then
            closeUI()
        end
    end
    
    if mX >= pX and mX <= pX+oW and mY >= pY and mY <= pY+oH then
    else
        closeUI()
        endDown = true
    end

    if mX >= zoneXAlign and mX <= zoneXAlign + 190 then
        if mY >= zoneL1Y and mY <= zoneL1Y + 18 then
            if eventToggle == false then
                eventToggle = true
            else
                eventToggle = false
            end

        elseif mY >= zoneL2Y and mY <= zoneL2Y + 18 then
            if kegToggle == false then
                kegToggle = true
            else
                kegToggle = false
            end

        elseif mY >= zoneL3Y and mY <= zoneL3Y + 18 then
            if chestToggle == false then
                chestToggle = true
            else
                chestToggle = false
            end

        elseif mY >= zoneL4Y and mY <= zoneL4Y + 18 then
            if sharkToggle == false then
                sharkToggle = true
            else
                sharkToggle = false
            end

        elseif mY >= zoneL5Y and mY <= zoneL5Y + 18 then
            if sharkAlertToggle == false then
                sharkAlertToggle = true
            else
                sharkAlertToggle = false
            end

        elseif mY >= zoneL6Y and mY <= zoneL6Y + 18 then
            if megToggle == false then
                megToggle = true
            else
                megToggle = false
            end

        elseif mY >= zoneL7Y and mY <= zoneL7Y + 18 then
            if mermToggle == false then
                mermToggle = true
            else
                mermToggle = false
            end

        elseif mY >= zoneL8Y and mY <= zoneL8Y + 18 then
            if sirenToggle == false then
                sirenToggle = true
            else
                sirenToggle = false
            end

        elseif mY >= zoneL9Y and mY <= zoneL9Y + 18 then
            if ammoPouchToggle == false then
                ammoPouchToggle = true
            else
                ammoPouchToggle = false
            end

        elseif mY >= zoneL10Y and mY <= zoneL10Y + 18 then
            if ladderToggle == false then
                ladderToggle = true
            else
                ladderToggle = false
            end
        
        elseif mY >= zoneL11Y and mY <= zoneL11Y + 18 then
            if islandToggle == false then
                islandToggle = true
            else
                islandToggle = false
            end
        end
    end
end

function closeUI()
    Nexnet_Input(false)
    Nexnet_DisableUI(false)
    pToggle = false
end

-- Parsing Function
function parseName(name)
    local namelen = string.len(name)
    local index = 0
    local pindex = 0

    for e = 9, 1, -1 do
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
end

function onRenderEvent()
    local posX, posY = Nexnet_GetPlayerPos()
    local panX, panY = Nexnet_GetViewportSize()
    local midX, midY = panX/2, panY/2
    mX, mY = Nexnet_GetMousePosition()
    left = Nexnet_IsLeftPressed()
    -- Nexnet_Console(true)
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

        if endDown == true then
            moveMenu(0)
            endDown = false
        end

        -- FILL
        Nexnet_Line(pX + 2, pY + 1, pX + 2, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 4, pY + 1, pX + 4, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 6, pY + 1, pX + 6, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 8, pY + 1, pX + 8, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 10, pY + 1, pX + 10, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 12, pY + 1, pX + 12, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 14, pY + 1, pX + 14, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 16, pY + 1, pX + 16, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 18, pY + 1, pX + 18, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 20, pY + 1, pX + 20, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 22, pY + 1, pX + 22, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 24, pY + 1, pX + 24, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 26, pY + 1, pX + 26, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 28, pY + 1, pX + 28, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 30, pY + 1, pX + 30, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 32, pY + 1, pX + 32, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 34, pY + 1, pX + 34, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 36, pY + 1, pX + 36, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 38, pY + 1, pX + 38, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 40, pY + 1, pX + 40, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 42, pY + 1, pX + 42, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 44, pY + 1, pX + 44, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 46, pY + 1, pX + 46, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 48, pY + 1, pX + 48, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 50, pY + 1, pX + 50, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 52, pY + 1, pX + 52, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 54, pY + 1, pX + 54, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 56, pY + 1, pX + 56, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 58, pY + 1, pX + 58, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 60, pY + 1, pX + 60, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 62, pY + 1, pX + 62, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 64, pY + 1, pX + 64, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 66, pY + 1, pX + 66, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 68, pY + 1, pX + 68, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 70, pY + 1, pX + 70, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 72, pY + 1, pX + 72, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 74, pY + 1, pX + 74, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 76, pY + 1, pX + 76, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 78, pY + 1, pX + 78, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 80, pY + 1, pX + 80, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 82, pY + 1, pX + 82, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 84, pY + 1, pX + 84, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 86, pY + 1, pX + 86, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 88, pY + 1, pX + 88, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 90, pY + 1, pX + 90, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 92, pY + 1, pX + 92, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 94, pY + 1, pX + 94, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 96, pY + 1, pX + 96, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 98, pY + 1, pX + 98, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 100, pY + 1, pX + 100, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 102, pY + 1, pX + 102, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 104, pY + 1, pX + 104, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 106, pY + 1, pX + 106, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 108, pY + 1, pX + 108, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 110, pY + 1, pX + 110, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 112, pY + 1, pX + 112, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 114, pY + 1, pX + 114, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 116, pY + 1, pX + 116, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 118, pY + 1, pX + 118, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 120, pY + 1, pX + 120, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 122, pY + 1, pX + 122, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 124, pY + 1, pX + 124, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 126, pY + 1, pX + 126, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 128, pY + 1, pX + 128, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 130, pY + 1, pX + 130, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 132, pY + 1, pX + 132, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 134, pY + 1, pX + 134, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 136, pY + 1, pX + 136, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 138, pY + 1, pX + 138, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 140, pY + 1, pX + 140, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 142, pY + 1, pX + 142, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 144, pY + 1, pX + 144, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 146, pY + 1, pX + 146, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 148, pY + 1, pX + 148, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 150, pY + 1, pX + 150, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 152, pY + 1, pX + 152, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 154, pY + 1, pX + 154, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 156, pY + 1, pX + 156, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 158, pY + 1, pX + 158, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 160, pY + 1, pX + 160, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 162, pY + 1, pX + 162, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 164, pY + 1, pX + 164, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 166, pY + 1, pX + 166, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 168, pY + 1, pX + 168, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 170, pY + 1, pX + 170, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 172, pY + 1, pX + 172, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 174, pY + 1, pX + 174, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 176, pY + 1, pX + 176, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 178, pY + 1, pX + 178, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 180, pY + 1, pX + 180, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 182, pY + 1, pX + 182, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 184, pY + 1, pX + 184, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 186, pY + 1, pX + 186, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 188, pY + 1, pX + 188, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 190, pY + 1, pX + 190, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 192, pY + 1, pX + 192, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 194, pY + 1, pX + 194, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 196, pY + 1, pX + 196, pY + pH, fC, fC, fC, fA)
        Nexnet_Line(pX + 198, pY + 1, pX + 198, pY + pH, fC, fC, fC, fA)
        
        -- MENU
        Nexnet_Line(pCX + 100, divider, pCX - 100, divider, bR, bG, bB, bA)
        Nexnet_Line(pCX + 100, eButtonY - 12, pCX - 100, eButtonY - 12, bR, bG, bB, bA)
        Nexnet_Rect(pX, pY, pW, pH, bR, bG, bB, bA)
        Nexnet_String("NEXNET+", pCX, title, tR, tB, tG, tA, 15, 1)

        Nexnet_String("World Events", aLeft, lineOne, tR, tB, tG, tA, 15, 0)
        
        if eventToggle == true then
            Nexnet_Line(rectX, l1RectY + 10, rectX + 10, l1RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l1RectY, rectX + 10, l1RectY + 10, tR, tB, tG, tA)
        end
        Nexnet_Rect(rectX, l1RectY, 10, 10, tR, tB, tG, tA)

        Nexnet_String("Kegs", aLeft - 23, lineTwo, tR, tB, tG, tA, 15, 0)
        if kegToggle == true then
            Nexnet_Line(rectX, l2RectY + 10, rectX + 10, l2RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l2RectY, rectX + 10, l2RectY + 10, tR, tB, tG, tA)
        end
        Nexnet_Rect(rectX, l2RectY, 10, 10, tR, tB, tG, tA)

        Nexnet_String("Athena Chests", aLeft + 5, lineThree, tR, tB, tG, tA, 15, 0)
        if chestToggle == true then
            Nexnet_Line(rectX, l3RectY + 10, rectX + 10, l3RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l3RectY, rectX + 10, l3RectY + 10, tR, tB, tG, tA)
        end
        Nexnet_Rect(rectX, l3RectY, 10, 10, tR, tB, tG, tA)

        Nexnet_String("Sharks", aLeft - 17, lineFour, tR, tB, tG, tA, 15, 0)
        if sharkToggle == true then
            Nexnet_Line(rectX, l4RectY + 10, rectX + 10, l4RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l4RectY, rectX + 10, l4RectY + 10, tR, tB, tG, tA)
        end
        Nexnet_Rect(rectX, l4RectY, 10, 10, tR, tB, tG, tA)
        
        Nexnet_String("Shark Alert", aLeft - 5, lineFive, tR, tB, tG, tA, 15, 0)
        if sharkAlertToggle == true then
            Nexnet_Line(rectX, l5RectY + 10, rectX + 10, l5RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l5RectY, rectX + 10, l5RectY + 10, tR, tB, tG, tA)
        end
        Nexnet_Rect(rectX, l5RectY, 10, 10, tR, tB, tG, tA)

        Nexnet_String("Megalodon", aLeft - 5, lineSix, tR, tB, tG, tA, 15, 0)
        if megToggle == true then
            Nexnet_Line(rectX, l6RectY + 10, rectX + 10, l6RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l6RectY, rectX + 10, l6RectY + 10, tR, tB, tG, tA)
        end
        Nexnet_Rect(rectX, l6RectY, 10, 10, tR, tB, tG, tA)
        
        Nexnet_String("Mermaids", aLeft - 7, lineSeven, tR, tB, tG, tA, 15, 0)
        if mermToggle == true then
            Nexnet_Line(rectX, l7RectY + 10, rectX + 10, l7RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l7RectY, rectX + 10, l7RectY + 10, tR, tB, tG, tA)
            
        end
        Nexnet_Rect(rectX, l7RectY, 10, 10, tR, tB, tG, tA)

        Nexnet_String("Sirens", aLeft - 18, lineEight, tR, tB, tG, tA, 15, 0)
        if sirenToggle == true then
            Nexnet_Line(rectX, l8RectY + 10, rectX + 10, l8RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l8RectY, rectX + 10, l8RectY + 10, tR, tB, tG, tA)
        end
        Nexnet_Rect(rectX, l8RectY, 10, 10, tR, tB, tG, tA)

        Nexnet_String("Ammo Pouches", aLeft + 9, lineNine, tR, tB, tG, tA, 15, 0)
        if ammoPouchToggle == true then
            Nexnet_Line(rectX, l9RectY + 10, rectX + 10, l9RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l9RectY, rectX + 10, l9RectY + 10, tR, tB, tG, tA)
        end
        Nexnet_Rect(rectX, l9RectY, 10, 10, tR, tB, tG, tA)

        Nexnet_String("Ladders", aLeft - 13, lineTen, tR, tB, tG, tA, 15, 0)
        if ladderToggle == true then
            Nexnet_Line(rectX, l10RectY + 10, rectX + 10, l10RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l10RectY, rectX + 10, l10RectY + 10, tR, tB, tG, tA)
        end
        Nexnet_Rect(rectX, l10RectY, 10, 10, tR, tB, tG, tA)

        Nexnet_String("Islands", aLeft - 15, lineEleven, tR, tB, tG, tA, 15, 0)
        if islandToggle == true then
            Nexnet_Line(rectX, l11RectY + 10, rectX + 10, l11RectY, tR, tB, tG, tA)
            Nexnet_Line(rectX, l11RectY, rectX + 10, l11RectY + 10, tR, tB, tG, tA)
        end
        Nexnet_Rect(rectX, l11RectY, 10, 10, tR, tB, tG, tA)

        Nexnet_Rect(eButtonX, eButtonY, eButtonW, eButtonH, tR, tB, tG, tA)
        Nexnet_String("Close", eBCX, eBCY, tR, tB, tG, tA, 15, 0)
        Nexnet_String("v1.1.0", pX + pW - 20, pY + pH - 17, 177, 177, 177, 255, 5, 0)
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
                            Nexnet_String("- FotD ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
                        elseif name == "BP_LegendSkellyFort_SkullCloud_C" then
                            Nexnet_String("- FoF ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
                        elseif name == "BP_SkellyFort_SkullCloud_C" then
                            Nexnet_String("- Skeleton Fort ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
                        elseif name == "BP_SkellyShip_ShipCloud_C" then
                            Nexnet_String("- Skeleton Fleet ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
                        elseif name == "BP_AshenLord_SkullCloud_C" then
                            Nexnet_String("- Ashen Winds ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
                        elseif name == "BP_PhantomTornado_C" then
                            Nexnet_String("- Veil Tornado ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
                        end
                    end
                end
            end
        end
    end

    if kegs == -1 then
        kegs = Nexnet_RegisterClass("Class Athena.StaticMerchantCrateItemProxy")
    end
    if kegToggle == true then
        if kegs > -1 then
            local num = Nexnet_GetActorCount(kegs)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(kegs, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    gName = Nexnet_GetActorName(kegs, i)
                    name = parseName(gName)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)
                    if x ~= 0 and y ~= 0 then
                        if sX > 0 then
                            if name == "BP_MerchantCrate_PirateLegendBigGunpowderBarrelProxy_C" then
                                Nexnet_String("- Athena Keg ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
                            elseif name == "BP_MerchantCrate_BigGunpowderBarrelProxy_C" then
                                Nexnet_String("- Stronghold Keg ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
                            elseif name == "BP_MerchantCrate_GunpowderBarrelProxy_C" then
                                Nexnet_String("- Powder Keg ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
                            end
                        end
                    end
                end
            end
        end
    end

    if athenaChests == -1 then
        athenaChests = Nexnet_RegisterClass("Class Athena.TreasureChestItemProxy")
    end
    if chestToggle == true then
        if athenaChests > -1 then
            local num = Nexnet_GetActorCount(athenaChests)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(athenaChests, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    gName = Nexnet_GetActorName(athenaChests, i)
                    name = parseName(gName)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)
                    if x ~= 0 and y ~= 0 then
                        if sX > 0 then
                            if name == "BP_TreasureChest_Proxy_PirateLegend_DVR_C" then
                                Nexnet_String("- Ashen Athena Chest ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
                            elseif name == "BP_TreasureChest_Proxy_PirateLegend_C" then
                                Nexnet_String("- Ashen Athena Chest ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
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
                                    Nexnet_String("- Shark -", sX, sY, 255, 255, 255, 255, 15, 1)
                                end
                            end
                            if sharkAlertToggle == true then
                                if sX <= 0 then
                                    Nexnet_String("! Shark ["..dist.."m] !", midX, midY + (i*25), 255, 0, 0, 255, 15, 1)
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if megs == -1 then
        megs = Nexnet_RegisterClass("Class Athena.TinyShark")
    end
    if megToggle == true then
        if megs > -1 then
            local num = Nexnet_GetActorCount(megs)
            if num > 0 then
                for i = num, 1, -1 do
                    local x, y, z = Nexnet_GetActorLocation(sharks, i)
                    local sX, sY = Nexnet_WorldToScreen(x, y, z)
                    dist = math.floor(math.sqrt((posX - x)^2 + (posY - y)^2)/100)
                    if x ~= 0 and y ~= 0 then
                        if sX > 0 then
                            Nexnet_String("- Megalodon ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
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
                            Nexnet_String("- Mermaid ["..dist.."m] -", sX, sY, 255, 255, 255, 255, 15, 1)
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
                            Nexnet_String("- Siren -", sX, sY, 255, 255, 255, 255, 15, 1)
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
                            Nexnet_String("*", sX, sY, 255, 255, 255, 255, 5, 1)
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
                                Nexnet_String("Ladder".." ["..dist.."m]", sX, sY, 255, 255, 255, 255, 15, 1)
                            end
                        end
                    end
                end
            end
        end
    end
    if islandToggle == true then
        for i = #islandN, 0, -1 do
            sX, sY = Nexnet_WorldToScreen(islandX[i],islandY[i],islandZConst)
            dist = math.floor(math.sqrt((posX - islandX[i])^2 + (posY - islandY[i])^2)/100)
            if sX > 0 then
                if dist < 3500 then
                    Nexnet_String(islandN[i].." ["..dist.."]", sX, sY, 255, 255, 255, 255, 15, 1)
                end
            end
        end
    end
end

function onKeyPressed(key)
    if key == 36 then -- HOME KEY (OPENS THE MENU)
        if pToggle == false then
            pToggle = true
        elseif pToggle == true then
            pToggle = false
        end
    end
    -- ONLY FOR DEBUGGING/ADDING SHIT
    ---[[
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
        @atom.#2135 - Random help here and there
        @! Camo#0001 - Testing & Telling me I have a skill issue
--]]