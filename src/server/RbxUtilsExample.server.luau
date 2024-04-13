-- Reference folder with packages
local Packages = game:GetService("ReplicatedStorage").Packages

-- Require the utility modules
local Signal = require(Packages.Signal)
local TableUtil = require(Packages.TableUtil)

-- Use the modules
-- Effectively shuffles a given array
local signal = Signal.new()

signal:Connect(function(data)
  local randomizedData = TableUtil.Shuffle(data)
  print(randomizedData)
end)

signal:Fire({"A", "B", "C"})
