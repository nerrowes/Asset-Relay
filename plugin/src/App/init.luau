--!strict
local App = {}

local UiLibrary = require("./UiLibrary")

local tabOrder = {
    "Animation",
    "Sound",
    "Mesh",
    "Replace",
    "Filter",
    "Settings"
}

function App.init(ui: UiLibrary.Ui, plugin: Plugin)
    for _, tabName in tabOrder do
        local tab = script.Tabs:FindFirstChild(tabName)
        assert(tab, "tab not found")
        task.spawn(require(tab), ui, plugin)
    end
end

return App