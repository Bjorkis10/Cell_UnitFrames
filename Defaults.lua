---@class CUF
local CUF = select(2, ...)

---@class CUF.constants
local const = CUF.constants

CUF.defaults = {}
CUF.anchorPoints = { "BOTTOM", "BOTTOMLEFT", "BOTTOMRIGHT", "CENTER", "LEFT", "RIGHT", "TOP", "TOPLEFT", "TOPRIGHT" }
CUF.outlines = { "None", "Outline", "Monochrome" }

---@type ColorOpt
local colorOpt = {
    ["type"] = const.ColorType.CLASS_COLOR,
    ["rgb"] = { 1, 1, 1 },
}

---@type FontOpt
local fontOpt = {
    ["size"] = 12,
    ["outline"] = "Outline",
    ["shadow"] = true,
    ["style"] = "Cell Default",
}

---@type PositionOpt
local positionOpt = {
    ["anchor"] = "CENTER",
    ["offsetX"] = 0,
    ["offsetY"] = 0,
}

local unitFrameIndicators = {
    ["buffs"] = {
        ["enabled"] = true,
        ["size"] = 4,
        ["spacing"] = 4,
        ["max"] = 16,
        ["blacklist"] = {
            ["enabled"] = false,
            ["list"] = {},
        },
        ["anchor"] = "TOPLEFT",
        ["offset"] = { 0, 0 },
        ["orientation"] = "right",
    },
}

---@type FontWidth
local defaultFontWidth = {
    ["type"] = "percentage",
    ["value"] = 0.75,
    ["auxValue"] = 3,
}
CUF.defaults.fontWidth = defaultFontWidth

---@type TextWidgetTable
local nameWidget = {
    ["enabled"] = true,
    ["color"] = colorOpt,
    ["font"] = fontOpt,
    ["position"] = positionOpt,
    ["width"] = defaultFontWidth,
}

---@type HealthTextWidgetTable
local healthTextWidget = {
    ["enabled"] = true,
    ["color"] = colorOpt,
    ["font"] = fontOpt,
    ["position"] = positionOpt,
    ["width"] = defaultFontWidth,
    ["format"] = "percentage",
    ["hideIfEmptyOrFull"] = false,
}

---@type PowerTextWidgetTable
local powerTextWidget = {
    ["enabled"] = true,
    ["color"] = colorOpt,
    ["font"] = fontOpt,
    ["position"] = positionOpt,
    ["width"] = defaultFontWidth,
    ["format"] = "percentage",
    ["hideIfEmptyOrFull"] = false,
}

---@class UnitFrameWidgetsTable
---@field nameText TextWidgetTable
---@field healthText HealthTextWidgetTable
---@field powerText PowerTextWidgetTable
local unitFrameWidgets = {
    [const.WIDGET_KIND.NAME_TEXT] = nameWidget,
    [const.WIDGET_KIND.HEALTH_TEXT] = healthTextWidget,
    [const.WIDGET_KIND.POWER_TEXT] = powerTextWidget
}

---@class Layout
CUF.defaults.unitFrame = {
    ["enabled"] = false,
    ["sameSizeAsPlayer"] = false,
    ["size"] = { 66, 46 },
    ["position"] = {},
    ["tooltipPosition"] = {},
    ["powerSize"] = 2,
    ["anchor"] = "TOPLEFT",
    ["widgets"] = unitFrameWidgets,
    --[[ ["indicators"] = unitFrameIndicators, ]]
}
