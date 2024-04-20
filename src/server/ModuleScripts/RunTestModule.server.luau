local ServerStorage = game:GetService("ServerStorage")
local RewardManager = require(ServerStorage.Server.TestModule)

local coins = RewardManager.getCoinReward("hard")

print("Should award " .. coins .. " coins")
