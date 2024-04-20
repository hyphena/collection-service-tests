local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Observers = require(ReplicatedStorage.Packages.Observers)

-- Observe mesh instances with the "Disco" tag
Observers.observeTag("Disco", function(part: MeshPart)
  -- Spawn a thread that changes the color every 0.2 seconds:
  local discoThread = task.spawn(function()
    while true do
      task.wait(0.2)
      part.Color = Color3.new(math.random(), math.random(), math.random())
      part.Rotation = Vector3.new(math.random()*360, math.random()*360, math.random()*360)
    end
  end)

  -- Close the disco thread once the tag or instance is removed:
  return function()
    task.cancel(discoThread)
  end
end)
