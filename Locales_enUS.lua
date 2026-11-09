--[[ Buff Me - English locale (default)
     Master key registry: every user-facing string lives here.
     Keys are the English text itself; the zhCN file overrides them by key.
     Add new strings here first, then mirror them in Locales_zhCN.lua.
]]

BuffMeLocaleEN = {}
local L = BuffMeLocaleEN

-- Key bindings (Core.lua) ---------------------------------------------------
L["Lock / unlock the Buff Me button"] = "Lock / unlock the Buff Me button"
L["Show / hide the assignment window"] = "Show / hide the assignment window"
L["Cast next buff (Shift/Ctrl/Alt = specific buff)"] = "Cast next buff (Shift/Ctrl/Alt = specific buff)"

-- Slash commands ------------------------------------------------------------
L["Group simulation on (%d players)."] = "Group simulation on (%d players)."
L["Group simulation off."] = "Group simulation off."
L["/bm  - open settings   |  /bm lock | unlock  |  /bm grid  - assignments  |  /bm sim [size]  - group simulation  |  /bm reset"] =
	"/bm  - open settings   |  /bm lock | unlock  |  /bm grid  - assignments  |  /bm sim [size]  - group simulation  |  /bm reset"

-- Shared provider messages (Buffers.lua / Paladin.lua) ----------------------
L["You don't know %s."] = "You don't know %s."
L["Nobody in range needs a buff."] = "Nobody in range needs a buff."
L["Everyone is buffed."] = "Everyone is buffed."
L["%s has everything."] = "%s has everything."
L["Not ready yet."] = "Not ready yet."
L["No blessing is set for that key combination."] = "No blessing is set for that key combination."
L["Nothing is assigned to you for %s's class."] = "Nothing is assigned to you for %s's class."
L[" (normal)"] = " (normal)"
L[" (Greater)"] = " (Greater)"
L["Auto"] = "Auto"
L[" (target / mouseover / you)"] = " (target / mouseover / you)"
L["Symbol of Kings"] = "Symbol of Kings"

-- Modifier key names --------------------------------------------------------
L["Shift"] = "Shift"
L["Ctrl"] = "Ctrl"
L["Alt"] = "Alt"
L["Shift+Ctrl"] = "Shift+Ctrl"
L["%s + click"] = "%s + click"

-- Role display names --------------------------------------------------------
L["role_tank"] = "tank"
L["role_melee"] = "melee"
L["role_ranged"] = "ranged"
L["role_healer"] = "healer"
L["role_caster"] = "caster"
L[" (assumed)"] = " (assumed)"

-- Plan dump (Roster.lua) ----------------------------------------------------
L["No paladins using Buff Me in this group."] = "No paladins using Buff Me in this group."

-- Main button tooltip (UI.lua) ----------------------------------------------
L["your group"] = "your group"
L["Next"] = "Next"
L["Still needing a buff"] = "Still needing a buff"
L["Your assignments"] = "Your assignments"
L["Click: cast on the next person who needs it"] = "Click: cast on the next person who needs it"
L["Mouse wheel over the button also casts"] = "Mouse wheel over the button also casts"
L["Unlocked: drag to move"] = "Unlocked: drag to move"
L["Group"] = "Group"
L["Buffed"] = "Buffed"

-- Player buttons (UI.lua) ---------------------------------------------------
L["Group simulation: this button is not live."] = "Group simulation: this button is not live."
L["Group simulation: these buttons are not live."] = "Group simulation: these buttons are not live."
L["Click"] = "Click"
L["Right-click"] = "Right-click"
L["Chosen: %s"] = "Chosen: %s"
L["Choose blessing"] = "Choose blessing"
L["Automatic"] = "Automatic"

-- Minimap icon (UI.lua) -----------------------------------------------------
L["Button is locked"] = "Button is locked"
L["Button is UNLOCKED - drag it to move"] = "Button is UNLOCKED - drag it to move"
L["Left-click"] = "Left-click"
L["Lock / unlock"] = "Lock / unlock"
L["Settings"] = "Settings"
L["Middle-click"] = "Middle-click"
L["Assignments"] = "Assignments"
L["Drag"] = "Drag"
L["Move this icon"] = "Move this icon"

-- Lock / position messages (UI.lua) -----------------------------------------
L["Locked."] = "Locked."
L["Unlocked - drag the button to move it. Left-click the minimap icon to lock it again."] =
	"Unlocked - drag the button to move it. Left-click the minimap icon to lock it again."
L["Button position reset."] = "Button position reset."
L["Settings are not ready yet."] = "Settings are not ready yet."

-- Assignment window (UI.lua) ------------------------------------------------
L["Only that paladin, or a raid leader / assistant, can change this."] =
	"Only that paladin, or a raid leader / assistant, can change this."
L["Nothing assigned"] = "Nothing assigned"
L["Manual override"] = "Manual override"
L["Click: change   Right-click: back to automatic"] = "Click: change   Right-click: back to automatic"
L["Buff Me - Paladin assignments"] = "Buff Me - Paladin assignments"
L["Updates automatically. Click a cell to override it, right-click to go back to automatic."] =
	"Updates automatically. Click a cell to override it, right-click to go back to automatic."

-- Options: general panel ----------------------------------------------------
L["One-click buffing for every class. Changes apply immediately. The How To tab explains everything."] =
	"One-click buffing for every class. Changes apply immediately. The How To tab explains everything."
L["Lock the button"] = "Lock the button"
L["Locked, the button cannot be dragged. You can also left-click the minimap icon."] =
	"Locked, the button cannot be dragged. You can also left-click the minimap icon."
L["Show the minimap icon"] = "Show the minimap icon"
L["Mouse wheel over the button casts"] = "Mouse wheel over the button casts"
L["One cast per scroll notch while the pointer is on the button."] =
	"One cast per scroll notch while the pointer is on the button."
L["Show how many still need a buff"] = "Show how many still need a buff"
L["Show the next target's name"] = "Show the next target's name"
L["Show tooltips"] = "Show tooltips"
L["Show a button for every group member"] = "Show a button for every group member"
L["A small button per player under the main button. Click one to buff that person; hold Shift / Ctrl / Alt for a specific buff."] =
	"A small button per player under the main button. Click one to buff that person; hold Shift / Ctrl / Alt for a specific buff."
L["Show the button"] = "Show the button"
L["Always"] = "Always"
L["Only in a group"] = "Only in a group"
L["Only when someone needs a buff"] = "Only when someone needs a buff"
L["Reset button position"] = "Reset button position"
L["Assignment window"] = "Assignment window"
L["Clear manual overrides"] = "Clear manual overrides"

-- Options: appearance -------------------------------------------------------
L["Appearance"] = "Appearance"
L["Size, scale and theme of the button and windows."] = "Size, scale and theme of the button and windows."
L["Automatic (ElvUI / DragonUI)"] = "Automatic (ElvUI / DragonUI)"
L["Theme"] = "Theme"
L["Scale"] = "Scale"
L["Main button size"] = "Main button size"
L["Player button size"] = "Player button size"
L["Opacity"] = "Opacity"
L["Accent colour"] = "Accent colour"
L["Detected: %s.  Active theme: %s."] = "Detected: %s.  Active theme: %s."
L["no UI replacement"] = "no UI replacement"
L["theme_dark"] = "Dark"
L["theme_retail"] = "Retail"
L["theme_classic"] = "Classic (Blizzard)"
L["theme_light"] = "Light"
L["theme_class"] = "Class colour"
L["theme_elvui"] = "ElvUI"

-- Options: layout & simulation ----------------------------------------------
L["Layout"] = "Layout"
L["Layout & Simulation"] = "Layout & Simulation"
L["Decide where the player buttons sit around the main button, and preview any group size without being in a group."] =
	"Decide where the player buttons sit around the main button, and preview any group size without being in a group."
L["Player buttons are placed"] = "Player buttons are placed"
L["Below the main button"] = "Below the main button"
L["Above the main button"] = "Above the main button"
L["To the right"] = "To the right"
L["To the left"] = "To the left"
L["Lined up with the main button's"] = "Lined up with the main button's"
L["Start (left / top edge)"] = "Start (left / top edge)"
L["Centre"] = "Centre"
L["End (right / bottom edge)"] = "End (right / bottom edge)"
L["Group simulation (show fake players)"] = "Group simulation (show fake players)"
L["Fills the player buttons with a pretend group so you can arrange your interface. Switches itself off when you log in again."] =
	"Fills the player buttons with a pretend group so you can arrange your interface. Switches itself off when you log in again."
L["Simulated group"] = "Simulated group"
L["Party (5)"] = "Party (5)"
L["%d-man raid"] = "%d-man raid"
L["Unlock the main button (left-click the minimap icon) to drag it. The player buttons follow it. Simulated buttons only show the layout and the colours; they don't cast. Also: /bm sim"] =
	"Unlock the main button (left-click the minimap icon) to drag it. The player buttons follow it. Simulated buttons only show the layout and the colours; they don't cast. Also: /bm sim"

-- Options: buffs ------------------------------------------------------------
L["Buffs"] = "Buffs"
L["Hold a key while clicking to cast that single-target blessing on your target (or mouseover, or yourself). A plain click casts the assigned blessing on whoever needs it next."] =
	"Hold a key while clicking to cast that single-target blessing on your target (or mouseover, or yourself). A plain click casts the assigned blessing on whoever needs it next."
L["Choose which buffs the plain click works through, in this order. Shift / Ctrl / Alt + click always casts that one buff on your target."] =
	"Choose which buffs the plain click works through, in this order. Shift / Ctrl / Alt + click always casts that one buff on your target."
L["Your class has no group buffs for Buff Me to manage. You can still use the minimap icon and settings."] =
	"Your class has no group buffs for Buff Me to manage. You can still use the minimap icon and settings."
L["Re-buff when under (min)"] = "Re-buff when under (min)"

-- Options: greater blessings --------------------------------------------------
L["Greater Blessings"] = "Greater Blessings"
L["Paladin only. Greater Blessings cover a whole class for longer but cost a Symbol of Kings."] =
	"Paladin only. Greater Blessings cover a whole class for longer but cost a Symbol of Kings."
L["Which blessings to use"] = "Which blessings to use"
L["Automatic (by group size)"] = "Automatic (by group size)"
L["Always Greater"] = "Always Greater"
L["Always normal"] = "Always normal"
L["Greater from group size"] = "Greater from group size"
L["A lone paladin buffs Kings on everyone"] = "A lone paladin buffs Kings on everyone"
L["Off: a lone paladin buffs Might on physical classes and Wisdom on casters instead."] =
	"Off: a lone paladin buffs Might on physical classes and Wisdom on casters instead."
L["Groups smaller than the chosen size use normal blessings. Without a Symbol of Kings, normal blessings are used automatically. Shift / Ctrl / Alt clicks always use the normal blessing."] =
	"Groups smaller than the chosen size use normal blessings. Without a Symbol of Kings, normal blessings are used automatically. Shift / Ctrl / Alt clicks always use the normal blessing."

-- Options: how to -----------------------------------------------------------
L["How To"] = "How To"

local H1, H2, R = "|cff33b8f2", "|cffffd100", "|r"

L["HOWTO"] = H1 .. "What is Buff Me?" .. R .. "\n" ..
"One add-on that buffs for every class that has group buffs. You get a single smart button. " ..
"Each click casts the next buff that is actually needed, so you just keep clicking until everyone is covered. " ..
"There is nothing to set up: no panels, no Auto-Assign button, no Refresh button.\n\n" ..

H1 .. "Casting" .. R .. "\n" ..
H2 .. "Click" .. R .. " the button: it picks the next player who needs a buff and casts on them. The count on the icon is how many people still need something; the name under it is who is next.\n" ..
H2 .. "Mouse wheel" .. R .. " while the pointer is over the button casts too, one cast per notch.\n" ..
H2 .. "Key binding:" .. R .. " Esc > Key Bindings > Buff Me. Bind a key, or a mouse-wheel direction, and you can hide the button if you like.\n" ..
H2 .. "Action bar:" .. R .. " put this in a macro (or on your bar) to cast from there:  /click BuffMeButton\n" ..
"The game only allows one cast per click or key press, so Buff Me cannot cast on its own. Each click already points at the next person, so just click again.\n\n" ..

H1 .. "Player buttons" .. R .. "\n" ..
"Under the main button there is one small button per group member (class icon), in columns of five: one column in a party, one per raid group in a raid. " ..
"A " .. H2 .. "green border" .. R .. " means that person has everything, the " .. H2 .. "accent border" .. R .. " means they still need a buff, and a dimmed icon means they are out of range or dead. " ..
"The icon is always the person's class. Click a button to buff that person with the buff Buff Me has chosen for them; hold Shift / Ctrl / Alt to cast a specific one. " ..
"Paladins can " .. H2 .. "right-click" .. R .. " a player button to choose that person's blessing by hand (a small yellow mark shows a manual choice); pick Automatic to go back. " ..
"You can turn the buttons off, or change their size, in the settings.\n\n" ..

H1 .. "Layout and simulation" .. R .. "\n" ..
"The Layout tab places the player buttons below, above, left or right of the main button, lined up with its start, centre or end. " ..
"Turn on " .. H2 .. "Group simulation" .. R .. " to fill the grid with a pretend party or raid (5 to 60 players) and arrange your interface without being in a group. " ..
"Simulated buttons only show the layout; they don't cast. Quick toggle: /bm sim (or /bm sim 40).\n\n" ..

H1 .. "How the right buff is chosen" .. R .. "\n" ..
"Buff Me reads each player's role and spec. People running Buff Me share theirs automatically; for everyone else it quietly looks at their talents when they are close enough (never in combat, one player every few seconds). " ..
"That is how a Balance or Restoration druid ends up with Wisdom and a Feral druid with Might. Until a player has been read, their class default is used.\n\n" ..

H1 .. "Modifier keys (a specific single buff)" .. R .. "\n" ..
"Hold a key while you click to cast one specific buff on " .. H2 .. "your target" .. R .. ", or the unit under your mouse if you have no target, or yourself if neither.\n" ..
H2 .. "Paladin:" .. R .. "  Shift = Kings,  Ctrl = Might,  Alt = Wisdom,  Shift+Ctrl = Sanctuary  (change them in the Buffs tab). These are the normal, single-target blessings.\n" ..
H2 .. "Priest:" .. R .. "  Shift = Fortitude,  Ctrl = Divine Spirit,  Alt = Shadow Protection.\n" ..
H2 .. "Druid:" .. R .. "  Shift = Mark of the Wild,  Ctrl = Thorns.\n" ..
H2 .. "Mage:" .. R .. "  Shift = Arcane Intellect.\n" ..
H2 .. "Warrior:" .. R .. "  Shift = Battle Shout,  Ctrl = Commanding Shout.\n" ..
H2 .. "Death Knight:" .. R .. "  Shift = Horn of Winter.\n" ..
"If your game is set to self-cast with Alt, an Alt click may land on you. Change that under Interface > Combat, or move the paladin Wisdom key to another combination.\n\n" ..

H1 .. "Paladin blessings: how they are assigned" .. R .. "\n" ..
"Buff Me works out the assignments by itself whenever the group changes. It looks at which classes are present, what role each player has, and which paladins are in the group. " ..
"Every paladin running Buff Me comes to the same result, so nothing needs to be sent around or confirmed.\n" ..
"- One paladin: Kings on everyone (you can switch this to a best-for-each-class choice in the settings).\n" ..
"- Two or more: Kings plus Might for melee classes and Wisdom for casters and healers. A Retribution paladin is picked for Might, a Holy paladin for Wisdom, a Protection paladin for Sanctuary.\n" ..
"- Tanks get Blessing of Sanctuary when a paladin has a blessing to spare. A protection paladin who tanks buffs himself with Sanctuary.\n" ..
"- A paladin can only keep one of his own blessings on a person, so Buff Me never gives one person two blessings from the same paladin.\n" ..
"- Anyone whose spec needs something different from the rest of their class (a healer paladin who would otherwise only get Might, say) receives the right single blessing from a paladin who has spare capacity.\n" ..
"Specs are shared automatically between players who run Buff Me. For everyone else Buff Me uses the dungeon-finder role, the main-tank flag, or the class default. A paladin who does not run Buff Me is not given any assignments, but whatever he casts counts as a buff already present.\n\n" ..

H1 .. "Greater or normal blessings?" .. R .. "\n" ..
"Groups of 4 or more (dungeons and raids) use Greater Blessings: one cast covers a whole class for a long time. Groups of 1 to 3 use the normal blessing on each player. " ..
"You can change the group size, or force one kind, in the settings. Greater Blessings need a Symbol of Kings; without one Buff Me falls back to normal blessings, and the tooltip shows how many you carry. " ..
"Modifier-key clicks always use the normal blessing.\n\n" ..

H1 .. "Assignment window" .. R .. "\n" ..
"Middle-click the minimap icon (or /bm grid) to see who casts what on which class. It is for looking, and for overrides: click a cell to change it, right-click to go back to automatic. " ..
"You can change your own row; raid leaders and assistants can change anyone's. Overrides last until you leave the group or reload.\n\n" ..

H1 .. "Minimap icon" .. R .. "\n" ..
H2 .. "Left-click:" .. R .. " lock / unlock the button. Unlocked, the button has a yellow border and can be dragged. The padlock on the icon shows the current state.\n" ..
H2 .. "Right-click:" .. R .. " open these settings.\n" ..
H2 .. "Middle-click:" .. R .. " assignment window.\n" ..
H2 .. "Drag:" .. R .. " move the icon around the minimap.\n\n" ..

H1 .. "Looks" .. R .. "\n" ..
"The Appearance tab has the scale, icon size, opacity, theme and accent colour. The Automatic theme matches ElvUI if it is loaded, uses a Retail style with DragonUI, and a plain dark style otherwise.\n\n" ..

H1 .. "Commands" .. R .. "\n" ..
"/bm  settings    /bm lock    /bm unlock    /bm grid    /bm reset  (button position)    /bm plan  (print the assignments)"
