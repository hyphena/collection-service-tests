local CollectionService = game:GetService("CollectionService")

-- Begin by looping through the parts tagged as "Killer"
for _, part in pairs(CollectionService:GetTagged("Killer")) do
  -- Bind those killer parts to a function that fires on touch
  part.Touched:Connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
      local Humanoid = hit.Parent.Humanoid
      Humanoid.Health = 0 
    end
  end)
end
