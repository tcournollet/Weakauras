-- INIT
if (not aura_env.buttonCreated) then
    local button = CreateFrame("Button", nil, UIParent, "SecureUnitButtonTemplate");
    button:SetWidth(aura_env.region:GetWidth());
    button:SetHeight(aura_env.region:GetHeight());
    button:SetPoint(aura_env.region:GetPoint());
    button:SetFrameStrata("HIGH");
    
    button:RegisterForClicks("LeftButtonUp", "RightButtonUp") ;
    button:SetAttribute("unit", "boss1");
    button:SetAttribute("type1", "target");
    button:SetAttribute("type2", "togglemenu");
    RegisterUnitWatch(button);
    
    aura_env.buttonCreated = true;
    
    -- Hide blizzard boss frames
    local hideFrame = CreateFrame("Frame");
    hideFrame:Hide();
    
    for i = 1, MAX_BOSS_FRAMES do
        local frame = _G["Boss" .. i .. "TargetFrame"];
        UnregisterUnitWatch(frame);
        frame:UnregisterAllEvents();
        frame:Hide();
        frame:SetParent(hideFrame);
        
        if (frame.manabar) then frame.manabar:UnregisterAllEvents() end;
        if (frame.healthbar) then frame.healthbar:UnregisterAllEvents() end;
        if (frame.spellbar) then frame.spellbar:UnregisterAllEvents() end;
        if (frame.powerBarAlt) then frame.powerBarAlt:UnregisterAllEvents() end;
    end
end


-- Animations Principal Couleur
function(progress, r1, g1, b1, a1, r2, g2, b2, a2)
    if ( not aura_env.unitColor ) then
        aura_env.unitColor = {};
    end
    
    if ( aura_env.unitColor.name ~= aura_env.state.name ) then
        local reaction = UnitReaction(aura_env.state.unit, "player");
        
        if ( reaction ) then
            aura_env.unitColor.r = FACTION_BAR_COLORS[reaction].r;
            aura_env.unitColor.g = FACTION_BAR_COLORS[reaction].g;
            aura_env.unitColor.b = FACTION_BAR_COLORS[reaction].b;
        end
        
        aura_env.unitColor.name = aura_env.state.name;
    end
    
    return aura_env.unitColor.r, aura_env.unitColor.g, aura_env.unitColor.b, a1;
end


-- ManaBar Animations Principal Couleur
function(progress, r1, g1, b1, a1, r2, g2, b2, a2)
    if ( not aura_env.unitColor ) then
        aura_env.unitColor = {};
    end
    
    if ( aura_env.unitColor.name ~= aura_env.state.name ) then
        local r, g, b;
        local powerType, powerToken, altR, altG, altB = UnitPowerType(aura_env.state.unit);
        local prefix = _G[powerToken];
        local info = PowerBarColor[powerToken];
        
        if ( info ) then
            r, g, b = info.r, info.g, info.b;
        else
            if ( not altR ) then
                info = PowerBarColor[powerType] or PowerBarColor["MANA"];
                r, g, b = info.r, info.g, info.b;
            else
                r, g, b = altR, altG, altB;
            end
        end
        if ( r and g and b ) then
            aura_env.unitColor.r = r;
            aura_env.unitColor.g = g;
            aura_env.unitColor.b = b;
        end
        
        aura_env.unitColor.name = aura_env.state.name;
    end
    
    return aura_env.unitColor.r, aura_env.unitColor.g, aura_env.unitColor.b, a1;
end
