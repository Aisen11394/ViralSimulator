local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Nick-s-Modded-KAVO-Lib/main/Nick'sModdedKavoLib.lua"))()

local Window = Library.CreateLib("Viral Simulator OP", "DarkTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("OP SCRIPTS")


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
        ["Model"] = "Crimson_Dragon",
        ["Locked"] = false,
        ["Level"] = 999999999999999999999999,
        ["Equipped"] = false,
        ["Big"] = true
    },
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Pets"):WaitForChild("GiveBoughtPet"):FireServer(unpack(args))
end)

Section:NewButton("Get 999999999999999 Wins (Need Rejoin)", "ButtonInfo", function()
local args = {
    [1] = 999999999999999
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("WinsGiver"):FireServer(unpack(args))
end)

Section:NewButton("Get 999999999999999 Fans (Need Rejoin)", "ButtonInfo", function()
local args = {
    [1] = 999999999999999
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("AddFans"):FireServer(unpack(args))
end)

Section:NewButton("9999999 Gems", "ButtonInfo", function()
local args = {
    [1] = 9999999
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GemsGiver"):FireServer(unpack(args))
end)

Section:NewButton("Use all codes", "ButtonInfo", function()
local args = {
    [1] = "9and4",
    [2] = "17Frogs",
    [3] = "About13Monkeys",
    [4] = "Cookies!",
    [5] = "Jarafrets",
    [6] = "ThankYou"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("UpdCode"):FireServer(unpack(args))
end)

Section:NewButton("Pet creator OP", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Aisen11394/PetCreator/main/.lua"))()
end)

Section:NewColorPicker("Select Color", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)
