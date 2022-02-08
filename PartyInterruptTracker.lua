-- INIT
aura_env.spells = {
    [1766] = 5,     -- Kick (Rogue)
    [2139] = 6,     -- Counterspell (Mage)
    [6552] = 4,     -- Pummel (Warrior)
    [19647] = 6,    -- Spell Lock (Warlock)
    [47528] = 3,    -- Mind Freeze (Death Knight)
    [57994] = 3,    -- Wind Shear (Shaman)
    [91802] = 2,    -- Shambling Rush (Death Knight)
    [96231] = 4,    -- Rebuke (Paladin)
    [106839] = 4,   -- Skull Bash (Feral)
    [97547] = 5,    -- Solar Beam (Balance)
    [115781] = 6,   -- Optical Blast (Warlock)
    [116705] = 4,   -- Spear Hand Strike (Monk)
    [132409] = 6,   -- Spell Lock (Warlock)
    [147362] = 3,   -- Countershot (Hunter)
    [171138] = 6,   -- Shadow Lock (Warlock)
    [183752] = 3,   -- Consume Magic (Demon Hunter)
    [187707] = 3,   -- Muzzle (Hunter)
    [212619] = 6,   -- Call Felhunter (Warlock)
    [231665] = 3,   -- Avengers Shield (Paladin)    
};

-- TRIGGER 1 events: PLAYER_REGEN_DISABLED COMBAT_LOG_EVENT_UNFILTERED:SPELL_INTERRUPT
function(allstates, event, ...)
    local function addUnit(unit)
        if UnitExists(unit)then
            aura_env.partyUnits[UnitGUID(unit)] = unit;
        end
    end
    
    if (event == "PLAYER_REGEN_DISABLED") then
        aura_env.partyUnits = {};
        addUnit("player");
        if (IsInRaid()) then
            for i = 1, MAX_RAID_MEMBERS do
                addUnit("raid"..i);
            end
        elseif (IsInGroup()) then
            for i = 1, MAX_PARTY_MEMBERS do
                addUnit("party"..i);
            end
        end
    end
    
    local subEvent = select(2, ...);
    local destGuid = select(8, ...);
    local spellId = select(12, ...);
    local destUnit = (aura_env.partyUnits and aura_env.partyUnits[destGuid]);
    local interruptDuration = aura_env.spells[spellId];
    if (subEvent == "SPELL_INTERRUPT" and interruptDuration and destUnit) then
        local name, _, icon = GetSpellInfo(spellId);
        
        allstates[destGuid..spellId] = {
            show = true,
            changed = true,
            name = name,
            icon = icon,
            autoHide = true,
            progressType = "timed",
            duration = interruptDuration,
            expirationTime = GetTime() + interruptDuration,
            unit = destUnit,
        };
    end
    
    return true;
end