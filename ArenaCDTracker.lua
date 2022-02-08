-- INIT
aura_env.spells = tInvert({
    642,    -- Divine Shield
    186265, -- Aspect of the Turtle
    45438,  -- Ice Block
    196555, -- Demon Hunter: Netherwalk
    47585,  -- Priest: Dispersion
    1022,   -- Blessing of Protection
    204018, -- Blessing of Spellwarding
    323524, -- Ultimate Form
    216113, -- Way of the Crane
    31224,  -- Cloak of Shadows
    212182, -- Smoke Bomb
    212183, -- Smoke Bomb
    8178,   -- Grounding Totem Effect
    199448, -- Blessing of Sacrifice
    236321, -- War Banner
    48792,  -- Death Knight: Icebound Fortitude
    49039,  -- Death Knight: Lichborne
    145629, -- Death Knight: Anti-Magic Zone
    81256,  -- Death Knight: Dancing Rune Weapon
    55233,  -- Death Knight: Vampiric Blood
    212800, -- Demon Hunter: Blur
    188499, -- Demon Hunter: Blade Dance
    209426, -- Demon Hunter: Darkness
    102342, -- Druid: Ironbark
    22812,  -- Druid: Barkskin
    61336,  -- Druid: Survival Instincts
    117679, -- Druid: Incarnation: Tree of Life
    236696, -- Druid: Thorns
    305497, -- Druid: Thorns
    53480,  -- Hunter: Roar of Sacrifice
    198111, -- Mage: Temporal Shield
    342246, -- Mage: Alter Time (Arcane)
    110909, -- Mage: Alter Time (Fire, Frost)
    125174, -- Monk: Touch of Karma
    116849, -- Monk: Life Cocoon
    120954, -- Monk: Fortifying Brew
    122783, -- Monk: Diffuse Magic
    228050, -- Paladin: Guardian of the Forgotten Queen
    86659,  -- Paladin: Guardian of Ancient Kings
    210256, -- Paladin: Blessing of Sanctuary
    6940,   -- Paladin: Blessing of Sacrifice
    184662, -- Paladin: Shield of Vengeance
    31850,  -- Paladin: Ardent Defender
    210294, -- Paladin: Divine Favor
    216331, -- Paladin: Avenging Crusader
    31842,  -- Paladin: Avenging Wrath (Holy)
    205191, -- Paladin: Eye for an Eye
    498,    -- Paladin: Divine Protection
    47788,  -- Priest: Guardian Spirit
    33206,  -- Priest: Pain Suppression
    232707, -- Priest: Ray of Hope
    81782,  -- Priest: Power Word: Barrier
    15286,  -- Priest: Vampiric Embrace
    19236,  -- Priest: Desperate Prayer
    197862, -- Priest: Archangel
    47536,  -- Priest: Rapture
    271466, -- Priest: Luminous Barrier
    207736, -- Rogue: Shadowy Duel
    5277,   -- Rogue: Evasion
    199754, -- Rogue: Riposte
    108271, -- Shaman: Astral Shift
    114052, -- Shaman: Ascendance (Restoration)
    104773, -- Warlock: Unending Resolve
    108416, -- Warlock: Dark Pact
    118038, -- Warrior: Die by the Sword
    12975,  -- Warrior: Last Stand
    871,    -- Warrior: Shield Wall
    213871, -- Warrior: Bodyguard
    345231, -- Trinket: Gladiator's Emblem
    197690, -- Warrior: Defensive Stance
    51271,  -- Death Knight: Pillar of Frost
    47568,  -- Death Knight: Empower Rune Weapon
    207289, -- Death Knight: Unholy Assault
    162264, -- Demon Hunter: Metamorphosis
    194223, -- Druid: Celestial Alignment
    102560, -- Druid: Incarnation: Chosen of Elune
    102543, -- Druid: Incarnation: King of the Jungle
    19574,  -- Hunter: Bestial Wrath
    266779, -- Hunter: Coordinated Assault
    288613, -- Hunter: Trueshot
    260402, -- Hunter: Double Tap
    12042,  -- Mage: Arcane Power
    190319, -- Mage: Combustion
    198144, -- Mage: Ice Form
    12472,  -- Mage: Icy Veins
    80353,  -- Mage: Time Warp
    152173, -- Monk: Serenity
    137639, -- Monk: Storm, Earth, and Fire
    31884,  -- Paladin: Avenging Wrath (Retribution)
    152262, -- Paladin: Seraphim
    231895, -- Paladin: Crusade
    197871, -- Priest: Dark Archangel
    10060,  -- Priest: Power Infusion
    194249, -- Priest: Voidform
    13750,  -- Rogue: Adrenaline Rush
    121471, -- Rogue: Shadow Blades
    114050, -- Shaman: Ascendance (Elemental)
    114051, -- Shaman: Ascendance (Enhancement)
    2825,   -- Shaman: Bloodlust
    204361, -- Shaman: Bloodlust (Honor Talent)
    32182,  -- Shaman: Heroism
    204362, -- Shaman: Heroism (Honor Talent)
    191634, -- Shaman: Stormkeeper
    204366, -- Shaman: Thundercharge
    113858, -- Warlock: Dark Soul: Instability
    113860, -- Warlock: Dark Soul: Misery
    107574, -- Warrior: Avatar
    227847, -- Warrior: Bladestorm (Arms)
    260708, -- Warrior: Sweeping Strikes
    262228, -- Warrior: Deadly Calm
    1719,   -- Warrior: Recklessness
});

-- TRIGGER 1 events: PLAYER_REGEN_DISABLED COMBAT_LOG_EVENT_UNFILTERED:SPELL_CAST_SUCCESS
function(allstates, event, ...)
    if (event == "PLAYER_REGEN_DISABLED") then
        aura_env.arenaUnits = {};
        for i = 1, 3 do
            local unit = "arena"..i;
            if UnitExists(unit)then
                aura_env.arenaUnits[UnitGUID(unit)] = unit;
            end
        end
    end
    
    local subEvent = select(2, ...);
    local sourceGuid = select(4, ...);
    local spellId = select(12, ...);
    local sourceUnit = (aura_env.arenaUnits and aura_env.arenaUnits[sourceGuid]);
    local spellIndex = aura_env.spells[spellId];
    if (subEvent == "SPELL_CAST_SUCCESS" and spellIndex and sourceUnit) then
        local duration = GetSpellBaseCooldown(spellId)/1000;
        local name, _, icon = GetSpellInfo(spellId);
        allstates["ArenaCdTracker"..sourceGuid..spellId] = {
            show = true,
            changed = true,
            progressType = "timed",
            autoHide = true,
            duration = duration,
            expirationTime = GetTime() + duration,
            icon = icon,
            name = name,
            unit = sourceUnit,
            index = spellIndex,
        }
    end
    
    return true;
end