-- INIT
aura_env.spells = tInvert({
    -- Higher up = higher priority

    -- CCs
    5211,   -- Mighty Bash (Stun)
    108194, -- Asphyxiate (Unholy) (Stun)
    221562, -- Asphyxiate (Blood) (Stun)
    334693, -- Absolute Zero (Frost) (Stun)
    91797,  -- Monstrous Blow (Mutated Ghoul) (Stun)
    287254, -- Dead of Winter (Stun)
    210141, -- Zombie Explosion (Stun)
    199804, -- Between the Eyes (Stun)
    118905, -- Static Charge (Stun)
    1833,   -- Cheap Shot (Stun)
    853,    -- Hammer of Justice (Stun)
    179057, -- Chaos Nova (Stun)
    132169, -- Storm Bolt (Stun)
    408,    -- Kidney Shot (Stun)
    163505, -- Rake (Stun)
    119381, -- Leg Sweep (Stun)
    89766,  -- Axe Toss (Stun)
    30283,  -- Shadowfury (Stun)
    24394,  -- Intimidation (Stun)
    211881, -- Fel Eruption (Stun)
    91800,  -- Gnaw (Stun)
    205630, -- Illidan's Grasp (Stun)
    208618, -- Illidan's Grasp (Stun)
    203123, -- Maim (Stun)
    202244, -- Overrun
    200200, -- Holy Word: Chastise, Censure Talent (Stun)
    22703,  -- Infernal Awakening (Stun)
    132168, -- Shockwave (Stun)
    20549,  -- War Stomp (Stun)
    199085, -- Warpath (Stun)
    305485, -- Lightning Lasso (Stun)
    64044,  -- Psychic Horror (Stun)
    255723, -- Bull Rush (Stun)
    202346, -- Double Barrel (Stun)
    213688, -- Fel Cleave (Stun)
    204399, -- Earthfury (Stun)
    118345, -- Pulverize (Stun)
    171017, -- Meteor Strike (Infernal) (Stun)
    171018, -- Meteor Strike (Abyssal) (Stun)
    46968,  -- Shockwave
    132168, -- Shockwave (Protection)
    287712, -- Haymaker (Stun)

    33786,  -- Cyclone (Disorient)
    5246,   -- Intimidating Shout (Disorient)
    8122,   -- Psychic Scream (Disorient)
    2094,   -- Blind (Disorient)
    605,    -- Mind Control (Disorient)
    105421, -- Blinding Light (Disorient)
    207167, -- Blinding Sleet (Disorient)
    31661,  -- Dragon's Breath (Disorient)
    207685, -- Sigil of Misery (Disorient)
    198909, -- Song of Chi-ji (Disorient)
    202274, -- Incendiary Brew (Disorient)
    118699, -- Fear (Disorient)
    1513,   -- Scare Beast (Disorient)
    10326,  -- Turn Evil (Disorient)
    6358,   -- Seduction (Disorient)
    261589, -- Seduction 2 (Disorient)
    115268, -- Mesmerize (Shivarra) (Disorient)
    87204,  -- Sin and Punishment (Disorient)
    2637,   -- Hibernate (Disorient)
    226943, -- Mind Bomb (Disorient)
    236748, -- Intimidating Roar (Disorient)
    331866, -- Agent of Chaos (Disorient)
    324263, -- Sulfuric Emission (Disorient)

    51514,  -- Hex (Incapacitate)
    211004, -- Hex: Spider (Incapacitate)
    210873, -- Hex: Raptor (Incapacitate)
    211015, -- Hex: Cockroach (Incapacitate)
    211010, -- Hex: Snake (Incapacitate)
    196942, -- Hex: Voodoo Totem (Incapacitate)
    277784, -- Hex: Wicker Mongrel (Incapacitate)
    277778, -- Hex: Zandalari Tendonripper (Incapacitate)
    269352, -- Hex: Skeletal Hatchling (Incapacitate)
    118,    -- Polymorph (Incapacitate)
    61305,  -- Polymorph: Black Cat (Incapacitate)
    28272,  -- Polymorph: Pig (Incapacitate)
    61721,  -- Polymorph: Rabbit (Incapacitate)
    61780,  -- Polymorph: Turkey (Incapacitate)
    28271,  -- Polymorph: Turtle (Incapacitate)
    161353, -- Polymorph: Polar Bear Cub (Incapacitate)
    126819, -- Polymorph: Porcupine (Incapacitate)
    161354, -- Polymorph: Monkey (Incapacitate)
    161355, -- Polymorph: Penguin (Incapacitate)
    161372, -- Polymorph: Peacock (Incapacitate)
    277792, -- Polymorph: Bumblebee (Incapacitate)
    277787, -- Polymorph: Baby Direhorn (Incapacitate)
    3355,   -- Freezing Trap (Incapacitate)
    203337, -- Freezing Trap, Diamond Ice Honor Talent (Incapacitate)
    115078, -- Paralysis (Incapacitate)
    213691, -- Scatter Shot (Incapacitate)
    6770,   -- Sap (Incapacitate)
    20066,  -- Repentance (Incapacitate)
    200196, -- Holy Word: Chastise (Incapacitate)
    221527, -- Imprison, Detainment Honor Talent (Incapacitate)
    217832, -- Imprison (Incapacitate)
    99,     -- Incapacitating Roar (Incapacitate)
    82691,  -- Ring of Frost (Incapacitate)
    1776,   -- Gouge (Incapacitate)
    107079, -- Quaking Palm (Incapacitate)
    236025, -- Enraged Maim (Incapacitate)
    197214, -- Sundering (Incapacitate)
    9484,   -- Shackle Undead (Incapacitate)
    710,    -- Banish (Incapacitate)
    6789,   -- Mortal Coil (Incapacitate)

    -- Interrupts
    1766,   -- Kick (Rogue)
    2139,   -- Counterspell (Mage)
    6552,   -- Pummel (Warrior)
    19647,  -- Spell Lock (Warlock)
    47528,  -- Mind Freeze (Death Knight)
    57994,  -- Wind Shear (Shaman)
    91802,  -- Shambling Rush (Death Knight)
    96231,  -- Rebuke (Paladin)
    106839, -- Skull Bash (Feral)
    97547,  -- Solar Beam (Balance)
    115781, -- Optical Blast (Warlock)
    116705, -- Spear Hand Strike (Monk)
    132409, -- Spell Lock (Warlock)
    147362, -- Countershot (Hunter)
    171138, -- Shadow Lock (Warlock)
    183752, -- Consume Magic (Demon Hunter)
    187707, -- Muzzle (Hunter)
    212619, -- Call Felhunter (Warlock)
    231665, -- Avengers Shield (Paladin)

    -- Silences
    81261,  -- Solar Beam
    202933, -- Spider Sting
    233022, -- Spider Sting 2
    1330,   -- Garrote
    15487,  -- Silence
    199683, -- Last Word
    47476,  -- Strangulate
    31935,  -- Avenger's Shield
    204490, -- Sigil of Silence
    217824, -- Shield of Virtue
    43523,  -- Unstable Affliction Silence 1
    196364, -- Unstable Affliction Silence 2
    317589, -- Tormenting Backlash

    323673, -- Mindgames
    356567, -- Shackles of Malediction

    -- Disarms
    236077, -- Disarm
    236236, -- Disarm (Protection)
    209749, -- Faerie Swarm (Disarm)
    233759, -- Grapple Weapon
    207777, -- Dismantle

    -- Roots
    339,    -- Entangling Roots
    170855, -- Entangling Roots (Nature's Grasp)
    201589, -- Entangling Roots (Tree of Life)
    235963, -- Entangling Roots (Feral honor talent)
    122,    -- Frost Nova
    102359, -- Mass Entanglement
    64695,  -- Earthgrab
    200108, -- Ranger's Net
    212638, -- Tracker's Net
    162480, -- Steel Trap
    204085, -- Deathchill
    233395, -- Frozen Center
    233582, -- Entrenched in Flame
    201158, -- Super Sticky Tar
    33395,  -- Freeze
    228600, -- Glacial Spike
    116706, -- Disable
    45334,  -- Immobilized
    53148,  -- Charge (Hunter Pet)
    190927, -- Harpoon
    136634, -- Narrow Escape (unused?)
    198121, -- Frostbite
    117526, -- Binding Shot
    207171, -- Winter is Coming
});

aura_env.interrupts = {
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

aura_env.roots = {
    [339] = true,    -- Entangling Roots
    [170855] = true, -- Entangling Roots (Nature's Grasp)
    [201589] = true, -- Entangling Roots (Tree of Life)
    [235963] = true, -- Entangling Roots (Feral honor talent)
    [122] = true,    -- Frost Nova
    [102359] = true, -- Mass Entanglement
    [64695] = true,  -- Earthgrab
    [200108] = true, -- Ranger's Net
    [212638] = true, -- Tracker's Net
    [162480] = true, -- Steel Trap
    [204085] = true, -- Deathchill
    [233395] = true, -- Frozen Center
    [233582] = true, -- Entrenched in Flame
    [201158] = true, -- Super Sticky Tar
    [33395] = true,  -- Freeze
    [228600] = true, -- Glacial Spike
    [116706] = true, -- Disable
    [45334] = true,  -- Immobilized
    [53148] = true,  -- Charge (Hunter Pet)
    [190927] = true, -- Harpoon
    [136634] = true, -- Narrow Escape (unused?)
    [198121] = true, -- Frostbite
    [117526] = true, -- Binding Shot
    [207171] = true, -- Winter is Coming
};

aura_env.auraRemovedSubEvents = {
    ["SPELL_AURA_REMOVED"] = true,
    ["SPELL_AURA_REMOVED_DOSE"] = true,
};

aura_env.auraAppliedSubEvents = {
    ["SPELL_AURA_APPLIED"] = true,
    ["SPELL_AURA_REFRESH"] = true,
    ["SPELL_AURA_APPLIED_DOSE"] = true,
};

aura_env.addUnit = function(unit)
    if UnitExists(unit)then
        aura_env.partyUnits[UnitGUID(unit)] = unit;
    end
end

aura_env.getAura = function(destUnit, spellId, type)
    if (destUnit and spellId and type) then
        local filter = (type == "BUFF" and "HELPFUL" or "HARMFUL");

        for i = 1, 30 do
            local _, icon, count, dispelType, duration, expirationTime, _, _, _, id = UnitAura(destUnit, i, filter);
            if (id == spellId) then 
                return icon, count, dispelType, duration, expirationTime;
            end
            if (not id) then
                break;
            end
        end
    end
end

-- TRIGGER 1 events: GROUP_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED:SPELL_AURA_REMOVED,COMBAT_LOG_EVENT_UNFILTERED:SPELL_AURA_REMOVED_DOSE,COMBAT_LOG_EVENT_UNFILTERED:SPELL_AURA_APPLIED,COMBAT_LOG_EVENT_UNFILTERED:SPELL_AURA_REFRESH,COMBAT_LOG_EVENT_UNFILTERED:SPELL_AURA_APPLIED_DOSE,COMBAT_LOG_EVENT_UNFILTERED:SPELL_INTERRUPT
function(allstates, event, ...)
    local subEvent = select(2, ...);
    local destGuid = select(8, ...);
    local spellId = select(12, ...);
    
    -- party units changed
    if (event == "GROUP_ROSTER_UPDATE") then
        aura_env.partyUnits = {};
        aura_env.addUnit("player");
        if (IsInRaid()) then
            for i = 1, MAX_RAID_MEMBERS do
                aura_env.addUnit("raid"..i);
            end
        elseif (IsInGroup()) then
            for i = 1, MAX_PARTY_MEMBERS do
                aura_env.addUnit("party"..i);
            end
        end
    end

    -- aura removed
    if (aura_env.auraRemovedSubEvents[subEvent]) then
        if (allstates[destGuid..spellId] and allstates[destGuid..spellId].show) then
            allstates[destGuid..spellId] = {
                show = false,
                changed = true,
            };
        end
    end

    -- aura applied
    if (aura_env.auraAppliedSubEvents[subEvent]) then
        local index = aura_env.spells[spellId];
        local destUnit = (aura_env.partyUnits and aura_env.partyUnits[destGuid]);

        if (index and destUnit) then
            local name = select(13, ...);
            local type = select(15, ...);
            local isRoot = aura_env.roots[spellId] or false;
            local icon, count, dispelType, duration, expirationTime = aura_env.getAura(destUnit, spellId, type);

            allstates[destGuid..spellId] = {
                show = true,
                changed = true,
                name = name,
                icon = icon,
                stacks = count,
                progressType = "timed",
                duration = duration,
                expirationTime = expirationTime,
                index = index,
                unit = destUnit,
                dispelType = dispelType,
                isRoot = isRoot,
            };
        end
    end

    -- interrupt applied
    if (subEvent == "SPELL_INTERRUPT") then
        local index = aura_env.spells[spellId];
        local destUnit = (aura_env.partyUnits and aura_env.partyUnits[destGuid]);

        if (index and destUnit) then
            local duration = aura_env.interrupts[spellId];
            local name, _, icon = GetSpellInfo(spellId);
            
            allstates[destGuid..spellId] = {
                show = true,
                changed = true,
                name = name,
                icon = icon,
                autoHide = true,
                progressType = "timed",
                duration = duration,
                expirationTime = GetTime() + duration,
                index = index,
                unit = destUnit,
            };
        end
    end
    
    return true;
end

-- VARIABLES
{
    stacks = true,
    dispelType = {
        display = "Debuff type",
        type = "select",
        values = {
            ["Curse"] = "Curse",
            ["Disease"] = "Disease",
            ["Magic"] = "Magic",
            ["Poison"] = "Poison"
        }
    },
    isRoot = {
        display = "Is a root",
        type = "bool",   
    },
}