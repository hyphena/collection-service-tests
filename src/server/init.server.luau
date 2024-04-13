local CollectionService = game:GetService("CollectionService")

-- Starting instances, a part and a folder
local instance0 = Instance.new("Part")
instance0.Name = "instance0"
local instance1 = Instance.new("Folder")
instance1.Name = "instance1"

CollectionService:AddTag(instance0, "Tag_A")

-- Return table with all the tags of the given instance
local instance0_tags = CollectionService:GetTags(instance0)
local instance1_tags = CollectionService:GetTags(instance1)

print(instance0_tags) --> {"Tag_A"}
print(instance1_tags) --> {}

-- :GetTags() returns an array of strings, not a string
print(instance0_tags[1]) --> "Tag_A"
