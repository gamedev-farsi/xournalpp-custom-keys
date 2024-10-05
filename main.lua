local COLOR_GREEN = 0x32d6a4
local COLOR_BLUE = 0x4da6e6
local COLOR_RED = 0xe15f60
local COLOR_PURPLE = 0x8c367c
local COLOR_YELLOW = 0xcfab4a
local COLOR_WHITE = 0xeaeaeb

function registerUi(app, name, callback, accelerator)
    app.registerUi({
        ["menu"] = name,
        ["callback"] = callback,
        ["accelerator"] = accelerator or ""
    })
end

function switchToColor(color)
    app.changeToolColor({["color"] = color, ["selection"] = true})
end

function switchToRed()
    switchToColor(COLOR_RED)
end
function switchToGreen()
    switchToColor(COLOR_GREEN)
end
function switchToBlue()
    switchToColor(COLOR_BLUE)
end
function switchToWhite()
    switchToColor(COLOR_WHITE)
end
function switchToPurple()
    switchToColor(COLOR_PURPLE)
end
function switchToYellow()
    switchToColor(COLOR_YELLOW)
end

function pen()
    app.uiAction({ ["action"] = "ACTION_TOOL_PEN" })
end

function eraser()
    app.uiAction({ ["action"] = "ACTION_TOOL_ERASER" })
end

function text()
    app.uiAction({ ["action"] = "ACTION_TOOL_TEXT" })
end

function initUi()
    -- Tools shortcuts
    registerUi(app, "Pen Tool", "pen", "w")
    registerUi(app, "Eraser Tool", "eraser", "e")
    registerUi(app, "Text Tool", "text", "t")

    -- Colors shortcuts
    registerUi(app, "Color > Red", "switchToRed", "<shift>r")
    registerUi(app, "Color > Green", "switchToGreen", "<shift>g")
    registerUi(app, "Color > Blue", "switchToBlue", "<shift>b")
    registerUi(app, "Color > White", "switchToWhite", "<shift>w")
    registerUi(app, "Color > Purple", "switchToPurple", "<shift>p")
    registerUi(app, "Color > Yellow", "switchToYellow", "<shift>y")
end