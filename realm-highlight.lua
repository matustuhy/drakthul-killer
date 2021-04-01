local f = CreateFrame("Frame",nil,UIParent)
f:SetFrameStrata("BACKGROUND")
f:SetWidth(128) -- Set these to whatever height/width is needed 
f:SetHeight(64) -- for your Texture

local t = f:CreateTexture(nil,"BACKGROUND")
t:SetTexture("Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Factions.blp")
t:SetAllPoints(f)
f.texture = t

f:SetPoint("CENTER",0,0)
f:Hide()

f:RegisterEvent("NAME_PLATE_UNIT_ADDED");

local enemies = {}

local function eventHandler(self, event, ...)
    if (event == "NAME_PLATE_UNIT_ADDED") then
        local nameplateid = ...
        local nameplateUnitGuid = UnitGUID(nameplateid)
        local unitName = GetUnitName(nameplateid, true)
        local name, realm = strsplit("-", unitName)

        -- print(name, realm);

        if (realm == "Drak'thul") then
            f:Show()
        end

        if (realm == "Turalyon") then
            f:Show()
        end
    end
end
f:SetScript("OnEvent", eventHandler);