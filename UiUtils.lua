-- Actions Affichage trigger toujours actif
PlayerFrame:ClearAllPoints();
PlayerFrame:SetPoint("RIGHT", UIParent, "CENTER", -180, 320);
PlayerFrame:SetUserPlaced(true);

TargetFrame:ClearAllPoints();
TargetFrame:SetPoint("LEFT", PlayerFrame, "RIGHT", 360, 0);
TargetFrame:SetUserPlaced(true);

FocusFrame:ClearAllPoints();
FocusFrame:SetPoint("LEFT", TargetFrame, "RIGHT", 0, 0);
FocusFrame:SetUserPlaced(true);

UIPARENT_MANAGED_FRAME_POSITIONS["TalkingHeadFrame"].yOffset = 40;
UIPARENT_MANAGED_FRAME_POSITIONS["ExtraAbilityContainer"].yOffset = 40;
UIPARENT_MANAGED_FRAME_POSITIONS["CastingBarFrame"].yOffset = 80;

for i = 1, 12 do _G["ActionButton"..i]:SetScale(1.1) end;
MultiBarBottomLeft:SetScale(1.1);
MultiBarBottomRight:SetScale(1.1);