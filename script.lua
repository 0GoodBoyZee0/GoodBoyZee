-- GoodBoyZee Script
-- Drücke 'Y', um eine lustige Aktion auszuführen

local UserInputService = game:GetService("UserInputService")
local SoundService = game:GetService("SoundService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Sound erstellen
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://1234567890"  -- Ersetze durch die ID deines gewünschten Sounds
sound.Parent = SoundService

-- Funktion, die bei Tastendruck ausgeführt wird
local function onInputBegan(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Y then
        -- Beispielaktion: Sound abspielen
        sound:Play()
        -- Weitere Aktionen können hier hinzugefügt werden
    end
end

-- Ereignis verbinden
UserInputService.InputBegan:Connect(onInputBegan)

print("GoodBoyZee Script geladen. Drücke 'Y' für eine lustige Aktion!")
