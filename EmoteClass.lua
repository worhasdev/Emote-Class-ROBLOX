--[[

Author(s): Krish "worhas" P
Purpose: Handles emotes

]]

local Emote = {}

-- Get schema
local EmoteData = require(script.EmoteSchema) 

-- Variables to keep track of the currently playing emote
local currentAnimation = nil
local currentSound = nil

function Emote.playEmote(emoteIndex)
	-- Stop any previously playing emote
	Emote.stopEmote()
	local emote = EmoteData.Emotes[emoteIndex]
	if emote then
		-- Load and play the animation
		local animation = Instance.new("Animation")
		animation.AnimationId = "rbxassetid://" .. emote.animationId
		currentAnimation = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
		currentAnimation:Play()

		-- Load and play the audio
		currentSound = Instance.new("Sound")
		currentSound.SoundId = "rbxassetid://" .. emote.audioId
		currentSound.Looped = true
		currentSound.Parent = game.SoundService
		currentSound:Play()
	end
end

-- Stop any emote being played
function Emote.stopEmote()
	if currentAnimation then
		currentAnimation:Stop()
		currentAnimation = nil
	end
	if currentSound then
		currentSound:Stop()
		currentSound = nil
	end
end

return Emote
