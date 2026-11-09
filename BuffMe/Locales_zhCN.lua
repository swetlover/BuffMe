--[[ Buff Me - 简体中文本地化 (zhCN)
     按 key 覆盖 Locales_enUS.lua 中的英文文本；未翻译的 key 自动回退英文。
     维护时请先修改 Locales_enUS.lua，再同步本文件对应的 key。
]]

BuffMeLocaleZH = {}
local L = BuffMeLocaleZH

-- 按键绑定（Core.lua） ------------------------------------------------------
L["Lock / unlock the Buff Me button"] = "锁定 / 解锁 Buff Me 按钮"
L["Show / hide the assignment window"] = "显示 / 隐藏祝福分配窗口"
L["Cast next buff (Shift/Ctrl/Alt = specific buff)"] = "施放下一个增益（Shift/Ctrl/Alt = 指定增益）"

-- 斜杠命令 ------------------------------------------------------------------
L["Group simulation on (%d players)."] = "团队模拟已开启（%d 名玩家）。"
L["Group simulation off."] = "团队模拟已关闭。"
L["/bm  - open settings   |  /bm lock | unlock  |  /bm grid  - assignments  |  /bm sim [size]  - group simulation  |  /bm reset"] =
	"/bm - 打开设置  |  /bm lock | unlock  |  /bm grid - 分配窗口  |  /bm sim [人数] - 团队模拟  |  /bm reset"

-- 通用提示（Buffers.lua / Paladin.lua） -------------------------------------
L["You don't know %s."] = "你还没有学会%s。"
L["Nobody in range needs a buff."] = "范围内没有人需要增益。"
L["Everyone is buffed."] = "所有人都已获得增益。"
L["%s has everything."] = "%s 的增益已齐备。"
L["Not ready yet."] = "尚未就绪。"
L["No blessing is set for that key combination."] = "该按键组合没有设置祝福。"
L["Nothing is assigned to you for %s's class."] = "没有为 %s 的职业分配给你任何祝福。"
L[" (normal)"] = "（普通）"
L[" (Greater)"] = "（强效）"
L["Auto"] = "自动"
L[" (target / mouseover / you)"] = "（目标 / 鼠标指向 / 自己）"
L["Symbol of Kings"] = "王者印记"

-- 修饰键名称（按键名不翻译） -------------------------------------------------
L["Shift"] = "Shift"
L["Ctrl"] = "Ctrl"
L["Alt"] = "Alt"
L["Shift+Ctrl"] = "Shift+Ctrl"
L["%s + click"] = "%s + 点击"

-- 职责显示名 ------------------------------------------------------------------
L["role_tank"] = "坦克"
L["role_melee"] = "近战"
L["role_ranged"] = "远程"
L["role_healer"] = "治疗"
L["role_caster"] = "法系"
L[" (assumed)"] = "（推测）"

-- 分配打印（Roster.lua） -----------------------------------------------------
L["No paladins using Buff Me in this group."] = "队伍中没有使用 Buff Me 的圣骑士。"

-- 主按钮鼠标提示（UI.lua） ----------------------------------------------------
L["your group"] = "全队"
L["Next"] = "下一个"
L["Still needing a buff"] = "仍需要增益"
L["Your assignments"] = "你的分配"
L["Click: cast on the next person who needs it"] = "点击：为下一个需要的人施放"
L["Mouse wheel over the button also casts"] = "在按钮上滚动鼠标滚轮也可施放"
L["Unlocked: drag to move"] = "已解锁：可拖动移动"
L["Group"] = "群体"
L["Buffed"] = "已齐备"

-- 玩家按钮（UI.lua） ----------------------------------------------------------
L["Group simulation: this button is not live."] = "团队模拟：此按钮不会真正施法。"
L["Group simulation: these buttons are not live."] = "团队模拟：这些按钮不会真正施法。"
L["Click"] = "点击"
L["Right-click"] = "右键点击"
L["Chosen: %s"] = "已选择：%s"
L["Choose blessing"] = "选择祝福"
L["Automatic"] = "自动"

-- 小地图图标（UI.lua） --------------------------------------------------------
L["Button is locked"] = "按钮已锁定"
L["Button is UNLOCKED - drag it to move"] = "按钮已解锁 - 拖动以移动"
L["Left-click"] = "左键点击"
L["Lock / unlock"] = "锁定 / 解锁"
L["Settings"] = "设置"
L["Middle-click"] = "中键点击"
L["Assignments"] = "分配窗口"
L["Drag"] = "拖动"
L["Move this icon"] = "移动此图标"

-- 锁定 / 位置提示（UI.lua） ---------------------------------------------------
L["Locked."] = "已锁定。"
L["Unlocked - drag the button to move it. Left-click the minimap icon to lock it again."] =
	"已解锁 - 拖动按钮即可移动。再次左键点击小地图图标可锁定。"
L["Button position reset."] = "按钮位置已重置。"
L["Settings are not ready yet."] = "设置尚未就绪。"

-- 分配窗口（UI.lua） ----------------------------------------------------------
L["Only that paladin, or a raid leader / assistant, can change this."] =
	"只有该圣骑士本人或团队领袖 / 助理才能修改。"
L["Nothing assigned"] = "未分配"
L["Manual override"] = "手动覆盖"
L["Click: change   Right-click: back to automatic"] = "左键：更换    右键：恢复自动"
L["Buff Me - Paladin assignments"] = "Buff Me - 圣骑士祝福分配"
L["Updates automatically. Click a cell to override it, right-click to go back to automatic."] =
	"自动更新。左键点击格子进行覆盖，右键恢复自动。"

-- 设置：常规面板 --------------------------------------------------------------
L["One-click buffing for every class. Changes apply immediately. The How To tab explains everything."] =
	"全职业一键增益。更改立即生效。所有说明见“如何使用”标签页。"
L["Lock the button"] = "锁定按钮"
L["Locked, the button cannot be dragged. You can also left-click the minimap icon."] =
	"锁定后按钮无法拖动。也可以左键点击小地图图标。"
L["Show the minimap icon"] = "显示小地图图标"
L["Mouse wheel over the button casts"] = "指针在按钮上时滚轮施法"
L["One cast per scroll notch while the pointer is on the button."] =
	"指针在按钮上时，每滚动一格施放一次。"
L["Show how many still need a buff"] = "显示仍需要增益的人数"
L["Show the next target's name"] = "显示下一个目标的名字"
L["Show tooltips"] = "显示鼠标提示"
L["Show a button for every group member"] = "为每位队伍成员显示一个按钮"
L["A small button per player under the main button. Click one to buff that person; hold Shift / Ctrl / Alt for a specific buff."] =
	"主按钮下方为每位玩家显示一个小按钮。点击即可为该玩家补增益；按住 Shift / Ctrl / Alt 点击施放指定增益。"
L["Show the button"] = "显示主按钮"
L["Always"] = "总是"
L["Only in a group"] = "仅在队伍中"
L["Only when someone needs a buff"] = "仅在有人需要增益时"
L["Reset button position"] = "重置按钮位置"
L["Assignment window"] = "分配窗口"
L["Clear manual overrides"] = "清除手动覆盖"

-- 设置：外观 ------------------------------------------------------------------
L["Appearance"] = "外观"
L["Size, scale and theme of the button and windows."] = "按钮和窗口的大小、缩放与主题。"
L["Automatic (ElvUI / DragonUI)"] = "自动（ElvUI / DragonUI）"
L["Theme"] = "主题"
L["Scale"] = "缩放"
L["Main button size"] = "主按钮大小"
L["Player button size"] = "玩家按钮大小"
L["Opacity"] = "不透明度"
L["Accent colour"] = "强调色"
L["Detected: %s.  Active theme: %s."] = "检测到：%s。当前主题：%s。"
L["no UI replacement"] = "无界面替换插件"
L["theme_dark"] = "深色"
L["theme_retail"] = "正式服风格"
L["theme_classic"] = "经典（暴雪）"
L["theme_light"] = "浅色"
L["theme_class"] = "职业色"
L["theme_elvui"] = "ElvUI"

-- 设置：布局与模拟 -------------------------------------------------------------
L["Layout"] = "布局"
L["Layout & Simulation"] = "布局与模拟"
L["Decide where the player buttons sit around the main button, and preview any group size without being in a group."] =
	"决定玩家按钮围绕主按钮的位置，无需组队即可预览任意团队规模。"
L["Player buttons are placed"] = "玩家按钮位置"
L["Below the main button"] = "主按钮下方"
L["Above the main button"] = "主按钮上方"
L["To the right"] = "右侧"
L["To the left"] = "左侧"
L["Lined up with the main button's"] = "与主按钮的对齐方式"
L["Start (left / top edge)"] = "起点（左 / 上边缘）"
L["Centre"] = "居中"
L["End (right / bottom edge)"] = "终点（右 / 下边缘）"
L["Group simulation (show fake players)"] = "团队模拟（显示虚拟玩家）"
L["Fills the player buttons with a pretend group so you can arrange your interface. Switches itself off when you log in again."] =
	"用虚拟队伍填充玩家按钮，方便你摆放界面。重新登录后自动关闭。"
L["Simulated group"] = "模拟团队规模"
L["Party (5)"] = "小队（5）"
L["%d-man raid"] = "%d 人团队"
L["Unlock the main button (left-click the minimap icon) to drag it. The player buttons follow it. Simulated buttons only show the layout and the colours; they don't cast. Also: /bm sim"] =
	"解锁主按钮（左键点击小地图图标）后即可拖动，玩家按钮会跟随它。模拟按钮只显示布局和颜色，不会真正施法。也可用：/bm sim"

-- 设置：增益 ------------------------------------------------------------------
L["Buffs"] = "增益"
L["Hold a key while clicking to cast that single-target blessing on your target (or mouseover, or yourself). A plain click casts the assigned blessing on whoever needs it next."] =
	"按住按键点击可将该单体祝福施放到你的目标（或鼠标指向、或自己）身上。普通点击会为下一个需要的人施放分配好的祝福。"
L["Choose which buffs the plain click works through, in this order. Shift / Ctrl / Alt + click always casts that one buff on your target."] =
	"选择普通点击依次施放哪些增益（按此顺序）。Shift / Ctrl / Alt + 点击始终对你的目标施放对应的单一增益。"
L["Your class has no group buffs for Buff Me to manage. You can still use the minimap icon and settings."] =
	"你的职业没有可由 Buff Me 管理的团队增益。你仍可使用小地图图标和设置。"
L["Re-buff when under (min)"] = "剩余不足多少分钟时补增益"

-- 设置：强效祝福 ----------------------------------------------------------------
L["Greater Blessings"] = "强效祝福"
L["Paladin only. Greater Blessings cover a whole class for longer but cost a Symbol of Kings."] =
	"仅圣骑士。强效祝福持续更久并覆盖整个职业，但需要消耗王者印记。"
L["Which blessings to use"] = "使用哪种祝福"
L["Automatic (by group size)"] = "自动（按队伍人数）"
L["Always Greater"] = "总是强效"
L["Always normal"] = "总是普通"
L["Greater from group size"] = "达到该人数时使用强效"
L["A lone paladin buffs Kings on everyone"] = "单圣骑士时为所有人上王者祝福"
L["Off: a lone paladin buffs Might on physical classes and Wisdom on casters instead."] =
	"关闭时：单圣骑士会为物理职业上力量祝福、为法系上智慧祝福。"
L["Groups smaller than the chosen size use normal blessings. Without a Symbol of Kings, normal blessings are used automatically. Shift / Ctrl / Alt clicks always use the normal blessing."] =
	"小于所选人数的队伍使用普通祝福。没有王者印记时自动使用普通祝福。Shift / Ctrl / Alt 点击始终使用普通祝福。"

-- 设置：如何使用 ----------------------------------------------------------------
L["How To"] = "如何使用"

local H1, H2, R = "|cff33b8f2", "|cffffd100", "|r"

L["HOWTO"] = H1 .. "Buff Me 是什么？" .. R .. "\n" ..
"一个插件搞定所有拥有团队增益的职业。你只有一个智能按钮，" ..
"每次点击都会施放当前真正需要的下一个增益，一直点到所有人齐备即可。" ..
"无需任何设置：没有面板、没有自动分配按钮、没有刷新按钮。\n\n" ..

H1 .. "施法" .. R .. "\n" ..
H2 .. "点击" .. R .. "按钮：自动挑选下一个需要增益的玩家并对其施法。图标上的数字是仍需要增益的人数；下方的名字是下一个目标。\n" ..
H2 .. "鼠标滚轮" .. R .. "：指针悬停在按钮上滚动即可施法，每格一次。\n" ..
H2 .. "按键绑定：" .. R .. "Esc > 按键设置 > Buff Me。可绑定按键或滚轮方向，愿意的话还可以隐藏按钮。\n" ..
H2 .. "动作条：" .. R .. "在宏里（或放到动作条上）写 /click BuffMeButton 即可从那里施放。\n" ..
"游戏限制每次点击或按键只能施放一次，Buff Me 无法自动连续施法。每次点击已经指向了下一个目标，再点一次即可。\n\n" ..

H1 .. "玩家按钮" .. R .. "\n" ..
"主按钮下方每位队伍成员有一个小按钮（职业图标），每列五个：小队为一列，团队中每个小队一列。" ..
H2 .. "绿色边框" .. R .. "表示该玩家增益齐备，" .. H2 .. "彩色边框" .. R .. "表示仍需要增益，图标变暗表示超出距离或已死亡。" ..
"图标始终是本人职业。点击按钮为其施放 Buff Me 选定的增益；按住 Shift / Ctrl / Alt 施放指定增益。" ..
"圣骑士可以" .. H2 .. "右键点击" .. R .. "玩家按钮手动选择该玩家的祝福（黄色小标记表示手动选择）；选择“自动”即可恢复。" ..
"可在设置中关闭这些按钮或调整大小。\n\n" ..

H1 .. "布局与模拟" .. R .. "\n" ..
"“布局”标签页可将玩家按钮放在主按钮的下、上、左、右，并与其起点、中心或终点对齐。" ..
"开启" .. H2 .. "团队模拟" .. R .. "可用虚拟小队或团队（5 到 60 人）填充按钮区，不组队也能摆放界面。" ..
"模拟按钮只展示布局，不会施法。快捷开关：/bm sim（或 /bm sim 40）。\n\n" ..

H1 .. "如何选出正确的增益" .. R .. "\n" ..
"Buff Me 会读取每位玩家的职责和天赋。使用 Buff Me 的玩家会自动共享信息；对其他人则在够近且非战斗时悄悄查看天赋（每隔几秒一人）。" ..
"所以平衡德或恢复德会得到智慧祝福，野德会得到力量祝福。在读取完成前使用职业默认值。\n\n" ..

H1 .. "修饰键（指定单体增益）" .. R .. "\n" ..
"按住按键点击可将指定增益施放到" .. H2 .. "你的目标" .. R .. "，无目标时为鼠标指向单位，两者都没有时为自己。\n" ..
H2 .. "圣骑士：" .. R .. "Shift = 王者，Ctrl = 力量，Alt = 智慧，Shift+Ctrl = 庇护（可在“增益”标签页修改）。这些是普通的单体祝福。\n" ..
H2 .. "牧师：" .. R .. "Shift = 真言术：韧，Ctrl = 神圣之灵，Alt = 暗影防护。\n" ..
H2 .. "德鲁伊：" .. R .. "Shift = 野性印记，Ctrl = 荆棘术。\n" ..
H2 .. "法师：" .. R .. "Shift = 奥术智慧。\n" ..
H2 .. "战士：" .. R .. "Shift = 战斗怒吼，Ctrl = 命令怒吼。\n" ..
H2 .. "死亡骑士：" .. R .. "Shift = 寒冬号角。\n" ..
"如果你的游戏设置了 Alt 自我施法，Alt 点击可能会落到自己身上。可在 界面 > 战斗 中修改，或把圣骑士的智慧祝福换到其他按键组合。\n\n" ..

H1 .. "圣骑士祝福：如何分配" .. R .. "\n" ..
"队伍变化时 Buff Me 会自动计算分配。它会查看在场职业、每位玩家的职责以及队伍中有哪些圣骑士。" ..
"每个使用 Buff Me 的圣骑士都会得出相同结果，无需互相发送或确认。\n" ..
"- 单圣骑士：全员王者祝福（可在设置中改为按职业最优）。\n" ..
"- 两个及以上：王者，外加近战力量、法系和治疗智慧。惩戒骑优先力量，奶骑优先智慧，防骑优先庇护。\n" ..
"- 坦克在有富余祝福时会得到庇护祝福。担任坦克的防骑会给自己上庇护。\n" ..
"- 一个圣骑士对同一人只能保持自己的一个祝福，所以 Buff Me 不会给同一人分配同一圣骑士的两个祝福。\n" ..
"- 天赋需求与职业其他人不同的人（比如原本只会得到力量祝福的奶骑），会从有富余能力的圣骑士那里得到正确的单体祝福。\n" ..
"使用 Buff Me 的玩家之间会自动共享天赋信息。对其他人则使用地下城查找器职责、主坦克标记或职业默认值。不使用 Buff Me 的圣骑士不会被分配任务，但他施放的祝福会被算作已存在的增益。\n\n" ..

H1 .. "强效还是普通祝福？" .. R .. "\n" ..
"4 人及以上（副本和团队）使用强效祝福：一次施法覆盖整个职业且持续更久。1 到 3 人对每人使用普通祝福。" ..
"可在设置中修改人数阈值或强制某一种。强效祝福需要王者印记；没有时 Buff Me 自动退回普通祝福，鼠标提示会显示你携带的数量。" ..
"修饰键点击始终使用普通祝福。\n\n" ..

H1 .. "分配窗口" .. R .. "\n" ..
"中键点击小地图图标（或 /bm grid）查看谁给哪个职业上什么祝福。它用于查看和覆盖：左键点击格子更换，右键恢复自动。" ..
"你可以修改自己的行；团队领袖和助理可以修改任何人。覆盖在你离开队伍或重载前有效。\n\n" ..

H1 .. "小地图图标" .. R .. "\n" ..
H2 .. "左键：" .. R .. "锁定 / 解锁按钮。解锁后按钮显示黄色边框并可拖动。图标上的挂锁显示当前状态。\n" ..
H2 .. "右键：" .. R .. "打开设置。\n" ..
H2 .. "中键：" .. R .. "分配窗口。\n" ..
H2 .. "拖动：" .. R .. "沿小地图移动图标。\n\n" ..

H1 .. "外观" .. R .. "\n" ..
"“外观”标签页提供缩放、图标大小、不透明度、主题和强调色。自动主题在加载 ElvUI 时匹配 ElvUI，使用 DragonUI 时为正式服风格，否则为深色简约风格。\n\n" ..

H1 .. "命令" .. R .. "\n" ..
"/bm 设置    /bm lock    /bm unlock    /bm grid    /bm reset（按钮位置）    /bm plan（打印分配）"
