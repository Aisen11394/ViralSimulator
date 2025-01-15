local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Nick-s-Modded-KAVO-Lib/main/Nick'sModdedKavoLib.lua"))()

local Window = Library.CreateLib("Viral Simulator OP", "DarkTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("LocalPlayer")


Section:NewButton("99999 Spins", "ButtonInfo", function()
    local args = {
    [1] = 99999
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GiveSpins"):FireServer(unpack(args))
end)

Section:NewButton("Get op PET", "ButtonInfo", function()
local args = {
    [1] = {
        ["UUID"] = "Octoguy1",
        ["Rarity"] = "Exclusive",
        ["Enchantment"] = {},
        ["Huge"] = true,
        ["Golden"] = true,
        ["Name"] = "OP_PET",
        ["Experience"] = 69420,
        ["Model"] = "Octoguy",
        ["Locked"] = false,
        ["Level"] = math.huge,
        ["Equipped"] = false,
        ["Big"] = true
    },
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Pets"):WaitForChild("GiveBoughtPet"):FireServer(unpack(args))
end)

Section:NewButton("Inf Wins (Need Rejoin)", "ButtonInfo", function()
local args = {
    [1] = math.huge
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("WinsGiver"):FireServer(unpack(args))
end)

Section:NewButton("Inf Fans", "ButtonInfo", function()
local args = {
    [1] = math.huge,
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("AddFans"):FireServer(unpack(args))
end)

Section:NewButton("Inf Gems (Need Rejoin)", "ButtonInfo", function()
local args = {
    [1] = math.huge
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GemsGiver"):FireServer(unpack(args))
end)

Section:NewColorPicker("Select Color", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)
