local CollectionService = game:GetService("CollectionService")

-- Starting instances, a part and a folder
local instance0 = Instance.new("Part")
instance0.Name = "instance0"
instance0.Parent = game.Workspace
local instance1 = Instance.new("Folder")
instance1.Name = "instance1"
instance1.Parent = game.Workspace

CollectionService:AddTag(instance0, "Tag_A")


-- :GetTags()
-- Returns an array with all of the given instance's tags
local instance0_tags = CollectionService:GetTags(instance0)
local instance1_tags = CollectionService:GetTags(instance1)

print(instance0_tags) --> {"Tag_A"}
print(instance1_tags) --> {}

-- :GetTags() returns an array of strings, not a string
print(instance0_tags[1]) --> "Tag_A"


-- :GetTagged()
-- Returns an array of all instances with the given tag
local tagged_instances_A = CollectionService:GetTagged("Tag_A")
local tagged_instances_B = CollectionService:GetTagged("Tag_B")

print(tagged_instances_A) --> {instance0}
print(tagged_instances_B) --> {}

-- :GetTagged() returns an array of instances, not an instance nor string
print(tagged_instances_A[1])      --> instance0
print(tagged_instances_A[1].Name) --> "instance0"


-- :RemoveTag()
-- Removes a given tag from an instance :P
CollectionService:AddTag(instance0, "Tag_A")
CollectionService:AddTag(instance0, "Tag_B")

print(CollectionService:GetTags(instance0)) --> {"Tag_A", "Tag_B"}

CollectionService:RemoveTag(instance0, "Tag_A")

print(CollectionService:GetTags(instance0)) --> {"Tag_B"}