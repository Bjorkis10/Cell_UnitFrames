---@class CUF
local CUF = select(2, ...)

---@class CUF.defaults
local Defaults = CUF.Defaults
Defaults.Options = {}

---@type ColorOpt
Defaults.Options.colorOpt = {
    rgb = { 1, 1, 1 },
    type = "class_color",
}
---@type SmallFontOpt
Defaults.Options.smallFontOpt = {
    size = 12,
    outline = "Outline",
    shadow = false,
    style = "Cell Default",
}
---@type BigFontOpt
Defaults.Options.auraStacksFontOpt = {
    size = 12,
    outline = "Outline",
    shadow = false,
    style = "Cell Default",
    point = "BOTTOMRIGHT",
    offsetX = 2,
    offsetY = -1,
    rgb = { 1, 1, 1 },
}
---@type BigFontOpt
Defaults.Options.auraDurationFontOpt = {
    size = 12,
    outline = "Outline",
    shadow = false,
    style = "Cell Default",
    point = "CENTER",
    offsetX = 0,
    offsetY = 0,
    rgb = { 1, 1, 1 },
}
---@type FontWidthOpt
Defaults.Options.fontWidth = {
    value = 0.75,
    type = "percentage",
    auxValue = 3,
}

---@class WidgetTables
Defaults.Widgets = {
    ---@type NameTextWidgetTable
    nameText = {
        enabled = true,
        frameLevel = 10,
        font = Defaults.Options.smallFontOpt,
        color = Defaults.Options.colorOpt,
        width = {
            value = 0.75,
            type = "percentage",
            auxValue = 3,
        },
        position = {
            point = "TOPLEFT",
            offsetY = 8,
            offsetX = 2,
            relativePoint = "CENTER",
        },
    },
    ---@type HealthTextWidgetTable
    healthText = {
        enabled = true,
        font = Defaults.Options.smallFontOpt,
        color = Defaults.Options.colorOpt,
        format = "percentage",
        textFormat = "",
        hideIfEmptyOrFull = false,
        frameLevel = 10,
        position = {
            point = "RIGHT",
            offsetY = 0,
            offsetX = 0,
            relativePoint = "CENTER",
        },
    },
    ---@type PowerTextWidgetTable
    powerText = {
        enabled = true,
        font = Defaults.Options.smallFontOpt,
        color = Defaults.Options.colorOpt,
        format = "percentage",
        hideIfEmptyOrFull = false,
        textFormat = "",
        frameLevel = 10,
        position = {
            point = "BOTTOMRIGHT",
            offsetY = 0,
            offsetX = 0,
            relativePoint = "CENTER",
        },
    },
    ---@type AuraWidgetTable
    buffs = {
        enabled = false,
        orientation = CUF.constants.AURA_ORIENTATION.LEFT_TO_RIGHT,
        showStack = true,
        showDuration = true,
        showAnimation = true,
        showTooltip = true,
        numPerLine = 5,
        maxIcons = 10,
        spacing = {
            horizontal = 1,
            vertical = 1,
        },
        font = {
            stacks = Defaults.Options.auraStacksFontOpt,
            duration = Defaults.Options.auraDurationFontOpt,
        },
        size = {
            width = 25,
            height = 25,
        },
        filter = {
            useBlacklist = false,
            blacklist = {},
            useWhitelist = false,
            whitelist = {},
            minDuration = 0,
            maxDuration = 0,
            hideNoDuration = false,
            castByPlayers = false,
            nonPersonal = true,
            castByNPC = false,
            personal = true,
            boss = false,
        },
        position = {
            point = "BOTTOMLEFT",
            offsetY = 20,
            offsetX = 0,
            relativePoint = "TOPLEFT",
        },
    },
    ---@type AuraWidgetTable
    debuffs = {
        enabled = false,
        orientation = CUF.constants.AURA_ORIENTATION.RIGHT_TO_LEFT,
        showStack = true,
        showDuration = true,
        showAnimation = true,
        showTooltip = true,
        numPerLine = 4,
        maxIcons = 4,
        spacing = {
            horizontal = 0,
            vertical = 0,
        },
        font = {
            stacks = Defaults.Options.auraStacksFontOpt,
            duration = Defaults.Options.auraDurationFontOpt,
        },
        size = {
            width = 25,
            height = 25,
        },
        filter = {
            useBlacklist = false,
            blacklist = {},
            useWhitelist = false,
            whitelist = {},
            minDuration = 0,
            maxDuration = 0,
            hideNoDuration = false,
            castByPlayers = false,
            nonPersonal = true,
            castByNPC = false,
            personal = true,
            boss = false,
        },
        position = {
            point = "BOTTOMRIGHT",
            offsetY = 20,
            offsetX = 0,
            relativePoint = "TOPRIGHT",
        },
    },
    ---@type RaidIconWidgetTable
    raidIcon = {
        enabled = false,
        frameLevel = 10,
        size = {
            width = 20,
            height = 20,
        },
        position = {
            point = "TOP",
            offsetY = 12,
            offsetX = 0,
            relativePoint = "CENTER",
        },
    },
    ---@type RoleIconWidgetTable
    roleIcon = {
        enabled = false,
        frameLevel = 10,
        size = {
            width = 20,
            height = 20,
        },
        position = {
            point = "TOPRIGHT",
            offsetY = 0,
            offsetX = 0,
            relativePoint = "CENTER",
        },
    },
    ---@type LeaderIconWidgetTable
    leaderIcon = {
        enabled = false,
        frameLevel = 10,
        size = {
            width = 20,
            height = 20,
        },
        position = {
            point = "TOPRIGHT",
            offsetY = 14,
            offsetX = 0,
            relativePoint = "CENTER",
        },
    },
    ---@type CombatIconWidgetTable
    combatIcon = {
        enabled = false,
        frameLevel = 10,
        size = {
            width = 20,
            height = 20,
        },
        position = {
            point = "CENTER",
            offsetY = 0,
            offsetX = 0,
            relativePoint = "CENTER",
        },
    },
    ---@type ShieldBarWidgetTable
    shieldBar = {
        enabled = false,
        frameLevel = 10,
        rgba = { 1, 1, 0, 0.25 },
        position = {
            point = "BOTTOMRIGHT",
            offsetY = 0,
            offsetX = 0,
            relativePoint = "BOTTOMRIGHT",
        },
    },
}

---@class Size
---@field [1] number
---@field [2] number

---@class Position
---@field [1] number
---@field [2] number

---@class TooltipPosition
---@field [1] FramePoint
---@field [2] FramePoint
---@field [3] number
---@field [4] number

---@class UnitLayout
---@field enabled boolean
---@field powerSize number
---@field size Size
---@field point FramePoint
---@field position Position
---@field widgets WidgetTables
---@field tooltipPosition TooltipPosition
---@field sameSizeAsPlayer boolean?

---@alias UnitLayoutTable table<Unit, UnitLayout>
---@type UnitLayoutTable
Defaults.Layouts = {
    player = {
        enabled = false,
        powerSize = 2,
        size = { 200, 40 },
        point = "BOTTOMLEFT",
        position = { 800, 500 },
        widgets = Defaults.Widgets,
        tooltipPosition = { "BOTTOMLEFT", "BOTTOMLEFT", -3, 0, },
    },
    ---@type UnitLayout
    target = {
        enabled = false,
        powerSize = 2,
        size = { 200, 40 },
        point = "BOTTOMLEFT",
        position = { 1400, 500 },
        widgets = Defaults.Widgets,
        tooltipPosition = { "BOTTOMLEFT", "BOTTOMLEFT", -3, 0, },
        sameSizeAsPlayer = false,
    },
    focus = {
        enabled = false,
        powerSize = 2,
        size = { 100, 30 },
        point = "BOTTOMLEFT",
        position = { 800, 700 },
        widgets = Defaults.Widgets,
        tooltipPosition = { "BOTTOMLEFT", "BOTTOMLEFT", -3, 0, },
        sameSizeAsPlayer = false,
    },
    targettarget = {
        enabled = false,
        powerSize = 2,
        size = { 200, 40 },
        point = "BOTTOMLEFT",
        position = { 1620, 500 },
        widgets = Defaults.Widgets,
        tooltipPosition = { "BOTTOMLEFT", "BOTTOMLEFT", -3, 0, },
        sameSizeAsPlayer = false,
    },
    pet = {
        enabled = false,
        powerSize = 2,
        size = { 200, 30 },
        point = "BOTTOMLEFT",
        position = { 800, 460 },
        widgets = Defaults.Widgets,
        tooltipPosition = { "BOTTOMLEFT", "BOTTOMLEFT", -3, 0, },
        sameSizeAsPlayer = false,
    },
}
