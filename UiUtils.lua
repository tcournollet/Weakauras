-- Actions Affichage trigger toujours actif
PlayerFrame:ClearAllPoints();
PlayerFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 200, -170);
PlayerFrame:SetUserPlaced(true);

TargetFrame:ClearAllPoints();
TargetFrame:SetPoint("LEFT", PlayerFrame, "RIGHT", 0, 0);
TargetFrame:SetUserPlaced(true);

FocusFrame:ClearAllPoints();
FocusFrame:SetPoint("BOTTOM", TargetFrame, "TOP", 0, 30);
FocusFrame:SetUserPlaced(true);

UIPARENT_MANAGED_FRAME_POSITIONS["TalkingHeadFrame"].yOffset = 40;
UIPARENT_MANAGED_FRAME_POSITIONS["ExtraAbilityContainer"].yOffset = 40;
UIPARENT_MANAGED_FRAME_POSITIONS["CastingBarFrame"].yOffset = 80;

if not InCombatLockdown() then
    CastingBarFrame.ignoreFramePositionManager = true;
    CastingBarFrame:SetMovable(true);
    CastingBarFrame:ClearAllPoints();
    CastingBarFrame:SetScale(1);
    CastingBarFrame:SetPoint("CENTER", UIParent, 0, -180);
    CastingBarFrame:SetUserPlaced(true);
    CastingBarFrame:SetMovable(false);
    CastingBarFrame.Border:SetTexture("Interface\\CastingBar\\UI-CastingBar-Border-Small");
    CastingBarFrame.Flash:SetTexture("Interface\\CastingBar\\UI-CastingBar-Flash-Small");
    CastingBarFrame.Text:ClearAllPoints();
    CastingBarFrame.Text:SetPoint("CENTER", 0, 1);
    CastingBarFrame.Border:SetWidth(CastingBarFrame.Border:GetWidth() + 4);
    CastingBarFrame.Flash:SetWidth(CastingBarFrame.Flash:GetWidth() + 4);
    CastingBarFrame.BorderShield:SetWidth(CastingBarFrame.BorderShield:GetWidth() + 4);
    CastingBarFrame.Border:SetPoint("TOP", 0, 26);
    CastingBarFrame.Flash:SetPoint("TOP", 0, 26);
    CastingBarFrame.BorderShield:SetPoint("TOP", 0, 26);
end

for i = 1, 12 do _G["ActionButton"..i]:SetScale(1.1) end;
for i = 1, 12 do _G["MultiBarBottomLeftButton"..i]:SetScale(1.1) end;
for i = 1, 12 do _G["MultiBarBottomRightButton"..i]:SetScale(1.1) end;
