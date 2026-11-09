--[[ Buff Me - Options
     Everything lives in Interface > AddOns > Buff Me:
       Buff Me (general) / Appearance / Buffs / How To
]]

local BM = BuffMe
local S = BM.Skin
local L = BM.L
local tinsert = table.insert

local counter = 0
local function GName(prefix)
	counter = counter + 1
	return "BuffMeOpt" .. prefix .. counter
end

local function Changed()
	BM:ApplySettings()
end

-- Widgets -------------------------------------------------------------------
local PANEL_W = 380 -- the AddOns settings area is narrow (~395 units); never assume more

local function NewPanel(name, parent, title, subtitle)
	local p = CreateFrame("Frame", nil, UIParent)
	p.name = name
	p.parent = parent
	p.widgets = {}
	p.wraps = {}

	--- Text that must wrap inside the panel instead of running off its edge.
	function p:Wrap(fs, margin)
		margin = margin or 0
		fs:SetJustifyH("LEFT")
		fs:SetWidth(PANEL_W - 32 - margin)
		self.wraps[#self.wraps + 1] = { fs, margin }
	end
	function p:FitWraps()
		local w = self:GetWidth()
		if not w or w < 200 then w = PANEL_W end
		for _, e in ipairs(self.wraps) do e[1]:SetWidth(w - 32 - e[2]) end
	end

	p.title = p:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	p.title:SetPoint("TOPLEFT", p, "TOPLEFT", 16, -16)
	p.title:SetText(title)
	if subtitle then
		p.sub = p:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
		p.sub:SetPoint("TOPLEFT", p.title, "BOTTOMLEFT", 0, -8)
		p.sub:SetText(subtitle)
		p:Wrap(p.sub)
	end
	p.refresh = function()
		p:FitWraps()
		for _, w in ipairs(p.widgets) do w:Refresh() end
	end
	p:SetScript("OnShow", p.refresh)
	p:SetScript("OnSizeChanged", function() p:FitWraps() end)
	p.okay = function() end
	p.cancel = function() end
	p.default = function() end
	InterfaceOptions_AddCategory(p)
	return p
end

local function Tip(frame, title, text)
	if not text then return end
	frame:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:AddLine(title, 1, 1, 1)
		GameTooltip:AddLine(text, 0.8, 0.8, 0.8, 1)
		GameTooltip:Show()
	end)
	frame:SetScript("OnLeave", function() GameTooltip:Hide() end)
end

local function Check(p, x, y, label, tip, get, set)
	local name = GName("Check")
	local cb = CreateFrame("CheckButton", name, p, "InterfaceOptionsCheckButtonTemplate")
	cb:SetPoint("TOPLEFT", p, "TOPLEFT", x, y)
	_G[name .. "Text"]:SetText(label)
	cb:SetScript("OnClick", function(self)
		set(self:GetChecked() and true or false)
	end)
	Tip(cb, label, tip)
	function cb:Refresh() self:SetChecked(get() and true or false) end
	tinsert(p.widgets, cb)
	return cb
end

local function Slider(p, x, y, label, minv, maxv, step, get, set, fmt)
	local name = GName("Slider")
	local s = CreateFrame("Slider", name, p, "OptionsSliderTemplate")
	s:SetPoint("TOPLEFT", p, "TOPLEFT", x, y)
	s:SetWidth(200)
	s:SetMinMaxValues(minv, maxv)
	s:SetValueStep(step)
	fmt = fmt or "%s"
	_G[name .. "Low"]:SetText(format(fmt, minv))
	_G[name .. "High"]:SetText(format(fmt, maxv))
	local text = _G[name .. "Text"]
	s:SetScript("OnValueChanged", function(self, v)
		if self.refreshing then return end
		v = math.floor(v / step + 0.5) * step
		text:SetText(label .. ": " .. format(fmt, v))
		set(v)
	end)
	function s:Refresh()
		self.refreshing = true
		local v = get()
		self:SetValue(v)
		text:SetText(label .. ": " .. format(fmt, v))
		self.refreshing = false
	end
	tinsert(p.widgets, s)
	return s
end

local function SetDropdownWidth(dd, width)
	-- the argument order differs between client versions; the wrong order just errors, so try both
	if not pcall(UIDropDownMenu_SetWidth, width, dd) then
		pcall(UIDropDownMenu_SetWidth, dd, width)
	end
end

local function Dropdown(p, x, y, label, items, get, set, width)
	local name = GName("DD")
	local dd = CreateFrame("Frame", name, p, "UIDropDownMenuTemplate")
	dd:SetPoint("TOPLEFT", p, "TOPLEFT", x - 16, y - 16)
	local lab = p:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
	lab:SetPoint("BOTTOMLEFT", dd, "TOPLEFT", 20, 2)
	lab:SetText(label)
	SetDropdownWidth(dd, width or 150)

	local function list() return type(items) == "function" and items() or items end
	UIDropDownMenu_Initialize(dd, function(_, level)
		for _, it in ipairs(list()) do
			local info = {}
			info.text = it.text
			info.value = it.value
			info.checked = (get() == it.value)
			info.func = function()
				set(it.value)
				_G[name .. "Text"]:SetText(it.text)
				CloseDropDownMenus()
			end
			UIDropDownMenu_AddButton(info, level)
		end
	end)
	function dd:Refresh()
		local cur = get()
		local text = ""
		for _, it in ipairs(list()) do
			if it.value == cur then text = it.text end
		end
		_G[name .. "Text"]:SetText(text)
	end
	tinsert(p.widgets, dd)
	return dd
end

local function Button(p, x, y, label, width, onclick)
	local b = CreateFrame("Button", nil, p, "UIPanelButtonTemplate")
	b:SetPoint("TOPLEFT", p, "TOPLEFT", x, y)
	b:SetWidth(width or 170)
	b:SetHeight(24)
	b:SetText(label)
	b:SetScript("OnClick", onclick)
	return b
end

local function Swatch(p, x, y, label, get, set)
	local b = CreateFrame("Button", nil, p)
	b:SetWidth(22)
	b:SetHeight(22)
	b:SetPoint("TOPLEFT", p, "TOPLEFT", x, y)
	b.edge = b:CreateTexture(nil, "BACKGROUND")
	b.edge:SetPoint("TOPLEFT", -1, 1)
	b.edge:SetPoint("BOTTOMRIGHT", 1, -1)
	b.edge:SetTexture(1, 1, 1, 1)
	b.tex = b:CreateTexture(nil, "ARTWORK")
	b.tex:SetAllPoints()
	local fs = b:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	fs:SetPoint("LEFT", b, "RIGHT", 8, 0)
	fs:SetText(label)
	function b:Refresh()
		local c = get()
		self.tex:SetTexture(c[1], c[2], c[3], 1)
	end
	b:SetScript("OnClick", function()
		local c = get()
		local r, g, bl = c[1], c[2], c[3]
		ColorPickerFrame.hasOpacity = false
		ColorPickerFrame.previousValues = { r, g, bl }
		ColorPickerFrame.func = function()
			local nr, ng, nb = ColorPickerFrame:GetColorRGB()
			set({ nr, ng, nb })
			b:Refresh()
		end
		ColorPickerFrame.cancelFunc = function(prev)
			if prev then set({ prev[1], prev[2], prev[3] }) end
			b:Refresh()
		end
		ColorPickerFrame:SetColorRGB(r, g, bl)
		ColorPickerFrame:Hide()
		ColorPickerFrame:Show()
	end)
	tinsert(p.widgets, b)
	return b
end

-- How-To text lives in the locale files (L["HOWTO"]) -------------------------

-- Build panels --------------------------------------------------------------
local function BuildGeneral()
	local p = NewPanel("Buff Me", nil, "Buff Me",
		L["One-click buffing for every class. Changes apply immediately. The How To tab explains everything."])
	BM.optionsPanel = p
	local db = BM.db

	local x, y = 16, -76
	Check(p, x, y, L["Lock the button"], L["Locked, the button cannot be dragged. You can also left-click the minimap icon."],
		function() return db.locked end,
		function(v) db.locked = v; BM.UI:Update(); BM.UI:UpdateMinimap() end)
	Check(p, x, y - 25, L["Show the minimap icon"], nil,
		function() return not db.minimap.hide end,
		function(v) db.minimap.hide = not v; BM.UI:UpdateMinimap() end)
	Check(p, x, y - 50, L["Mouse wheel over the button casts"], L["One cast per scroll notch while the pointer is on the button."],
		function() return db.wheelCast end, function(v) db.wheelCast = v end)
	Check(p, x, y - 75, L["Show how many still need a buff"], nil,
		function() return db.showCount end, function(v) db.showCount = v; BM.UI:Update() end)
	Check(p, x, y - 100, L["Show the next target's name"], nil,
		function() return db.showTargetName end, function(v) db.showTargetName = v; BM.UI:Update() end)
	Check(p, x, y - 125, L["Show tooltips"], nil,
		function() return db.tooltips end, function(v) db.tooltips = v end)
	Check(p, x, y - 150, L["Show a button for every group member"],
		L["A small button per player under the main button. Click one to buff that person; hold Shift / Ctrl / Alt for a specific buff."],
		function() return db.showPlayers end,
		function(v) db.showPlayers = v; BM.UI:LayoutPlayers(true); BM.UI:Update() end)

	Dropdown(p, x + 4, y - 175, L["Show the button"], {
		{ value = "always", text = L["Always"] },
		{ value = "group", text = L["Only in a group"] },
		{ value = "needed", text = L["Only when someone needs a buff"] },
	}, function() return db.showButton end,
		function(v) db.showButton = v; BM.UI:Update() end, 220)

	Button(p, x + 4, y - 250, L["Reset button position"], 170, function() BM:ResetPosition() end)
	Button(p, x + 182, y - 250, L["Assignment window"], 170, function() BM:ToggleGrid() end)
	Button(p, x + 4, y - 280, L["Clear manual overrides"], 170, function() BM:ClearOverrides() end)
	return p
end

local function BuildAppearance(parent)
	local p = NewPanel(L["Appearance"], parent.name, L["Appearance"],
		L["Size, scale and theme of the button and windows."])
	local db = BM.db
	local x, y = 16, -64

	local items = {}
	for _, key in ipairs(S.THEME_ORDER) do
		local text = (key == "auto") and L["Automatic (ElvUI / DragonUI)"] or L["theme_" .. key]
		items[#items + 1] = { value = key, text = text }
	end
	Dropdown(p, x + 4, y, L["Theme"], items,
		function() return db.theme end,
		function(v) db.theme = v; Changed() end, 210)

	Slider(p, x + 8, y - 78, L["Scale"], 0.5, 2, 0.05,
		function() return db.scale end, function(v) db.scale = v; Changed() end, "%.2f")
	Slider(p, x + 8, y - 126, L["Main button size"], 24, 96, 2,
		function() return db.iconSize end, function(v) db.iconSize = v; Changed() end, "%d")
	Slider(p, x + 8, y - 174, L["Player button size"], 16, 44, 2,
		function() return db.playerSize end, function(v) db.playerSize = v; Changed() end, "%d")
	Slider(p, x + 8, y - 222, L["Opacity"], 0.3, 1, 0.05,
		function() return db.alpha end, function(v) db.alpha = v; Changed() end, "%.2f")

	Swatch(p, x + 8, y - 268, L["Accent colour"],
		function() return db.accent end,
		function(c) db.accent = c; Changed() end)

	local info = p:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	info:SetPoint("TOPLEFT", p, "TOPLEFT", x + 4, y - 302)
	p:Wrap(info, 4)
	function info:Refresh()
		local detected = S:ElvUI() and "ElvUI" or (S:HasDragonUI() and "DragonUI" or L["no UI replacement"])
		local _, name = S:Theme()
		self:SetText(string.format(L["Detected: %s.  Active theme: %s."], detected, L["theme_" .. name]))
	end
	tinsert(p.widgets, info)
	return p
end

local function BuildLayout(parent)
	local p = NewPanel(L["Layout"], parent.name, L["Layout & Simulation"],
		L["Decide where the player buttons sit around the main button, and preview any group size without being in a group."])
	local db = BM.db
	local x, y = 16, -58

	Dropdown(p, x + 4, y, L["Player buttons are placed"], {
		{ value = "below", text = L["Below the main button"] },
		{ value = "above", text = L["Above the main button"] },
		{ value = "right", text = L["To the right"] },
		{ value = "left", text = L["To the left"] },
	}, function() return db.placement end,
		function(v) db.placement = v; BM.UI:LayoutPlayers(true) end, 210)

	Dropdown(p, x + 4, y - 62, L["Lined up with the main button's"], {
		{ value = "start", text = L["Start (left / top edge)"] },
		{ value = "center", text = L["Centre"] },
		{ value = "finish", text = L["End (right / bottom edge)"] },
	}, function() return db.align end,
		function(v) db.align = v; BM.UI:LayoutPlayers(true) end, 210)

	Check(p, x, y - 135, L["Group simulation (show fake players)"],
		L["Fills the player buttons with a pretend group so you can arrange your interface. Switches itself off when you log in again."],
		function() return BM.sim.on end,
		function(v) BM:SetSimulation(v) end)

	Dropdown(p, x + 4, y - 160, L["Simulated group"], {
		{ value = 5, text = L["Party (5)"] },
		{ value = 10, text = string.format(L["%d-man raid"], 10) },
		{ value = 25, text = string.format(L["%d-man raid"], 25) },
		{ value = 40, text = string.format(L["%d-man raid"], 40) },
		{ value = 60, text = string.format(L["%d-man raid"], 60) },
	}, function() return BM.sim.size end,
		function(v) BM:SetSimulation(BM.sim.on, v) end, 210)

	local note = p:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	note:SetPoint("TOPLEFT", p, "TOPLEFT", x + 4, y - 235)
	note:SetText(L["Unlock the main button (left-click the minimap icon) to drag it. The player buttons follow it. Simulated buttons only show the layout and the colours; they don't cast. Also: /bm sim"])
	p:Wrap(note, 4)
	return p
end

local function BuildBuffs(parent)
	local p = NewPanel(L["Buffs"], parent.name, L["Buffs"], nil)
	local db = BM.db
	local provider = BM.providers and BM.providers[BM.playerClass]
	local x, y = 16, -44

	local function Rebuff(py)
		Slider(p, x + 8, py, L["Re-buff when under (min)"], 0, 10, 1,
			function() return db.rebuffMinutes end,
			function(v) db.rebuffMinutes = v end)
	end

	if BM.playerClass == "PALADIN" then
		local sub = p:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
		sub:SetPoint("TOPLEFT", p, "TOPLEFT", x, y)
		sub:SetText(L["Hold a key while clicking to cast that single-target blessing on your target (or mouseover, or yourself). A plain click casts the assigned blessing on whoever needs it next."])
		p:Wrap(sub)
		local items = function()
			local out = {}
			for _, key in ipairs(BM.BLESSING_ORDER) do
				out[#out + 1] = { value = key, text = BM:BlessingName(key) }
			end
			return out
		end
		local function ModDD(mod, label, px, py)
			Dropdown(p, px, py, label, items,
				function() return db.mods[mod] end,
				function(v) db.mods[mod] = v end, 120)
		end
		ModDD("shift", string.format(L["%s + click"], L["Shift"]), x + 4, y - 70)
		ModDD("ctrl", string.format(L["%s + click"], L["Ctrl"]), x + 184, y - 70)
		ModDD("alt", string.format(L["%s + click"], L["Alt"]), x + 4, y - 130)
		ModDD("ctrlshift", string.format(L["%s + click"], L["Shift+Ctrl"]), x + 184, y - 130)
		Rebuff(y - 215)
	elseif provider then
		local sub = p:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
		sub:SetPoint("TOPLEFT", p, "TOPLEFT", x, y)
		sub:SetText(L["Choose which buffs the plain click works through, in this order. Shift / Ctrl / Alt + click always casts that one buff on your target."])
		p:Wrap(sub)
		local yy = y - 52
		for _, def in ipairs(provider.defs) do
			local label = provider:Label(def)
			if def.slot then
				local names = { shift = L["Shift"], ctrl = L["Ctrl"], alt = L["Alt"], ctrlshift = L["Shift+Ctrl"] }
				label = label .. "  (" .. names[def.slot] .. ")"
			end
			Check(p, x, yy, label, nil,
				function() return provider:Enabled(def) end,
				function(v) db.buffs[def.key] = v; BM.UI:Update() end)
			yy = yy - 26
		end
		Rebuff(yy - 24)
	else
		local sub = p:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
		sub:SetPoint("TOPLEFT", p, "TOPLEFT", x, y)
		sub:SetText(L["Your class has no group buffs for Buff Me to manage. You can still use the minimap icon and settings."])
		p:Wrap(sub)
	end
	return p
end

local function BuildGreater(parent)
	local p = NewPanel(L["Greater Blessings"], parent.name, L["Greater Blessings"],
		L["Paladin only. Greater Blessings cover a whole class for longer but cost a Symbol of Kings."])
	local db = BM.db
	local x, y = 16, -76

	Dropdown(p, x + 4, y, L["Which blessings to use"], {
		{ value = "auto", text = L["Automatic (by group size)"] },
		{ value = "greater", text = L["Always Greater"] },
		{ value = "normal", text = L["Always normal"] },
	}, function() return db.greaterMode end,
		function(v) db.greaterMode = v end, 210)

	Slider(p, x + 8, y - 78, L["Greater from group size"], 2, 5, 1,
		function() return db.greaterMinGroup end,
		function(v) db.greaterMinGroup = v end)

	Check(p, x, y - 120, L["A lone paladin buffs Kings on everyone"],
		L["Off: a lone paladin buffs Might on physical classes and Wisdom on casters instead."],
		function() return db.singlePaladinKings end,
		function(v) db.singlePaladinKings = v; BM:RequestRefresh(0.05) end)

	local note = p:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	note:SetPoint("TOPLEFT", p, "TOPLEFT", x + 4, y - 160)
	note:SetText(L["Groups smaller than the chosen size use normal blessings. Without a Symbol of Kings, normal blessings are used automatically. Shift / Ctrl / Alt clicks always use the normal blessing."])
	p:Wrap(note, 4)
	return p
end

local function BuildHowTo(parent)
	local p = NewPanel(L["How To"], parent.name, L["How To"], nil)
	local sf = CreateFrame("ScrollFrame", "BuffMeHowToScroll", p, "UIPanelScrollFrameTemplate")
	sf:SetPoint("TOPLEFT", p, "TOPLEFT", 12, -46)
	sf:SetPoint("BOTTOMRIGHT", p, "BOTTOMRIGHT", -32, 12)
	local content = CreateFrame("Frame", nil, sf)
	content:SetWidth(PANEL_W - 52)
	content:SetHeight(10)
	sf:SetScrollChild(content)
	local text = content:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	text:SetPoint("TOPLEFT", content, "TOPLEFT", 4, 0)
	text:SetWidth(PANEL_W - 60)
	text:SetJustifyH("LEFT")
	text:SetJustifyV("TOP")
	text:SetText(L["HOWTO"])

	local function Fit(w)
		if not w or w < 120 then w = PANEL_W - 52 end
		content:SetWidth(w)
		text:SetWidth(w - 8)
		content:SetHeight(text:GetStringHeight() + 24)
	end
	sf:SetScript("OnSizeChanged", function(_, w) Fit(w) end)
	tinsert(p.widgets, { Refresh = function() Fit(sf:GetWidth()) end })
	return p
end

BM:OnInit(function()
	local main = BuildGeneral()
	BuildAppearance(main)
	BuildLayout(main)
	BuildBuffs(main)
	if BM.playerClass == "PALADIN" then BuildGreater(main) end
	BuildHowTo(main)
end)
