local RewardManager = {}
local rewardCoins = 50

-- Local functions
local difficultyModifier = {
  easy = 0.5,
  normal = 1,
  hard = 2
}

-- Public functions
function RewardManager.getCoinReward(difficulty)
  local coins = difficultyModifier[difficulty] * rewardCoins
  return coins
end

return RewardManager
