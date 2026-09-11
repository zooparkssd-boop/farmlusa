--[[
    Savannah Beta | Autofarm Script
    Using WindUI by Footagesus
]]

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Config = {
    AutoFarm = false,
    AutoCollect = false,
    AutoAttack = false,
    AutoRebirth = false,
    FarmSpeed = 1,
    KillAura = false,
    ESP = false,
    AutoBuy = false,
}

local colors = {
    Purple = Color3.fromHex("#7775F2"),
    Green = Color3.fromHex("#10C550"),
    Yellow = Color3.fromHex("#ECA201"),
    Blue = Color3.fromHex("#257AF7"),
    Red = Color3.fromHex("#EF4F1D"),
    Grey = Color3.fromHex("#83889E"),
}

local Window = WindUI:CreateWindow({
    Title = "Savannah Beta",
    Author = "by Savannah",
    Folder = "SavannahBeta",
    Icon = "solar:folder-2-bold-duotone",
    Theme = "Dark",
    NewElements = true,
    OpenButton = {
        Title = "Open Savannah Beta",
        CornerRadius = UDim.new(1, 0),
        Enabled = true,
        Draggable = true,
        OnlyMobile = false,
    },
})

do
    Window:Tag({
        Title = "Beta",
        Icon = "github",
        Color = colors.Purple,
        Border = true,
    })
end

--// Main Tab
do
    local MainTab = Window:Tab({
        Title = "Main",
        Desc = "Farming options",
        Icon = "solar:home-2-bold",
        IconColor = colors.Green,
        IconShape = "Square",
        Border = true,
    })

    MainTab:Section({
        Title = "Farming",
    })

    MainTab:Toggle({
        Flag = "AutoFarm",
        Title = "Auto Farm",
        Desc = "Automatically farms mobs",
        Value = false,
        Callback = function(value)
            Config.AutoFarm = value
        end,
    })

    MainTab:Space()

    MainTab:Toggle({
        Flag = "AutoCollect",
        Title = "Auto Collect",
        Desc = "Collects drops automatically",
        Value = false,
        Callback = function(value)
            Config.AutoCollect = value
        end,
    })

    MainTab:Space()

    MainTab:Toggle({
        Flag = "AutoAttack",
        Title = "Auto Attack",
        Desc = "Attacks nearest mob",
        Value = false,
        Callback = function(value)
            Config.AutoAttack = value
        end,
    })

    MainTab:Space()

    MainTab:Slider({
        Flag = "FarmSpeed",
        Title = "Farm Speed",
        Step = 1,
        Value = {
            Min = 1,
            Max = 10,
            Default = 1,
        },
        Callback = function(value)
            Config.FarmSpeed = value
        end,
    })
end

--// Combat Tab
do
    local CombatTab = Window:Tab({
        Title = "Combat",
        Desc = "Combat options",
        Icon = "solar:check-square-bold",
        IconColor = colors.Red,
        IconShape = "Square",
        Border = true,
    })

    CombatTab:Section({
        Title = "Combat",
    })

    CombatTab:Toggle({
        Flag = "KillAura",
        Title = "Kill Aura",
        Desc = "Damage all mobs in range",
        Value = false,
        Callback = function(value)
            Config.KillAura = value
        end,
    })

    CombatTab:Space()

    CombatTab:Toggle({
        Flag = "AutoRebirth",
        Title = "Auto Rebirth",
        Desc = "Rebirth automatically when possible",
        Value = false,
        Callback = function(value)
            Config.AutoRebirth = value
        end,
    })

    CombatTab:Space()

    CombatTab:Toggle({
        Flag = "AutoBuy",
        Title = "Auto Buy",
        Desc = "Buys upgrades automatically",
        Value = false,
        Callback = function(value)
            Config.AutoBuy = value
        end,
    })
end

--// Visuals Tab
do
    local VisualsTab = Window:Tab({
        Title = "Visuals",
        Desc = "Visual options",
        Icon = "solar:eye-bold",
        IconColor = colors.Blue,
        IconShape = "Square",
        Border = true,
    })

    VisualsTab:Section({
        Title = "ESP",
    })

    VisualsTab:Toggle({
        Flag = "ESP",
        Title = "ESP Players",
        Desc = "Shows players through walls",
        Value = false,
        Callback = function(value)
            Config.ESP = value
        end,
    })
end

--// Teleports Tab
do
    local TeleportTab = Window:Tab({
        Title = "Teleports",
        Desc = "Teleport locations",
        Icon = "solar:map-arrow-square-bold",
        IconColor = colors.Yellow,
        IconShape = "Square",
        Border = true,
    })

    TeleportTab:Section({
        Title = "Locations",
    })

    local TeleportGroup = TeleportTab:Group({})

    TeleportGroup:Button({
        Title = "Teleport to Farm",
        Justify = "Center",
        Icon = "map-pin",
        Callback = function()
            --// Add teleport logic here
            print("Teleporting to farm...")
        end,
    })

    TeleportGroup:Space()

    TeleportGroup:Button({
        Title = "Redeem Codes",
        Justify = "Center",
        Icon = "ticket",
        Callback = function()
            --// Add code redemption here
            print("Redeeming codes...")
        end,
    })

    TeleportTab:Space()

    TeleportTab:Button({
        Title = "Destroy UI",
        Color = colors.Red,
        Justify = "Center",
        Icon = "shredder",
        Callback = function()
            Window:Destroy()
        end,
    })
end

print("[Savannah Beta] Loaded with WindUI!")