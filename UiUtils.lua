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
