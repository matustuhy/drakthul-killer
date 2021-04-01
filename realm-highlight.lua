local frame = CreateFrame("FRAME", "RealmHighlightFrame");
frame:RegisterEvent("NAME_PLATE_UNIT_ADDED");
local function eventHandler(self, event, ...)
    local nameplateid = ...
    local nameplateUnitGuid = UnitGUID(nameplateid)
    local unitName = GetUnitName(nameplateid, true)
    local name, realm = strsplit("-", unitName)

    -- print(name, realm);

    if (realm == "Drak'thul") then
        print(unitName)
    end
end
frame:SetScript("OnEvent", eventHandler);