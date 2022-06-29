local DustupLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dustuplol/DustQ/main/DustupLib.lua"))()

local Window = DustupLib.CreateLib("DustQ", "Midnight")
local TeleportTab = Window:NewTab("Teleports")
local TeleportSection = TeleportTab:NewSection("TPs")

local HRP = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

getgenv().AutoClicker = false
getgenv().AutoCollectMoney = false

TeleportSection:NewButton("Home", "Teleports to home", function()
    HRP.CFrame = CFrame.new(-55.3071976, 79.661026, -51.2704887)
end)
TeleportSection:NewButton("Roof", "Teleports to roof", function()
    HRP.CFrame = CFrame.new(-48.2251282, 131.095764, -42.9999847)
    print "you were teleported"
end)
TeleportSection:NewButton("Cauldron", "Teleport to cauldron", function()
    HRP.CFrame = CFrame.new(-111.617561, 78.5848999, -145.264572)
    print "you were teleported"
end)
TeleportSection:NewButton("Fishing Location", "Teleport to fishing", function()
    HRP.CFrame = CFrame.new(-49.2249832, 69.7146072, 36.5000153)
    print "you were teleported"
end)
TeleportSection:NewButton("Basement", "Teleports to basement", function()
    HRP.CFrame = CFrame.new(-62.5993042, 63.2515106, -41.826416)
    print "you were teleported"
end)
TeleportSection:NewButton("Second Floor", "Teleports to second floor", function()
    HRP.CFrame = CFrame.new(-62.2658806, 101.242638, -41.3557243)
    print "you were teleported"
end)
TeleportSection:NewButton("bilboard", "Teleports you to a billboard", function()
    HRP.CFrame = CFrame.new(-19.1078987, 116.468452, 85.0912552)
    print "you were teleported"
end)
TeleportSection:NewButton("the shops", "Teleports to stores", function()
    HRP.CFrame = CFrame.new(20.6851082, 75.0879211, -97.7548676)
    print "you were teleported"
end)
local PlayerTab = Window:NewTab("Player")
local PlayerSection = PlayerTab:NewSection("Player")
PlayerSection:NewButton("Speed value", "running speed 30", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
end)
PlayerSection:NewButton("Jump value", "jump power 70", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 70
end)
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")
MainSection:NewToggle("AutoClicker", "Automatically clicks Floppa.", function(state)
    if state then
        getgenv().AutoClicker = true
    else
        getgenv().AutoClicker = false
    end
end)

MainSection:NewToggle("AutoCollectMoney", "Automatically collectts money.", function(state)
    if state then
        getgenv().AutoCollectMoney = true
    else
        getgenv().AutoCollectMoney = false
    end
end)

while wait() do
    if getgenv().AutoCollectMoney then
        for i, v in pairs(workspace:GetChildren()) do
            if v.Name == "Money" or v.Name == "Money Bag" or v.Name == "Rent" then
                firetouchinterest(HRP, v)
            end
        end
    end
    if getgenv().AutoClicker then
        fireclickdetector(workspace.Floppa.ClickDetector, 32)
        for i, unlock in pairs(workspace.Unlocks:GetChildren()) do
            if unlock.Name == "Baby Floppa" then
                local clickDetector = unlock:WaitForChild("ClickDetector")
                fireclickdetector(clickDetector, 32)
            end
        end
    end
end
