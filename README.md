# Emote-Class-ROBLOX
A simple and easy to use emote class that allows players to emote with animations and music of their choice.

## Base functions
This class functions by referring to the schema that is supposed to be kept as a child to the main emote class. It pulls data from the schema, based on an index, that contains the sound and animation data. This can be used for custom character rigs too, as it works by having an animation play on the humanoid. Be aware that the structure must be followed in the schema, per emote so nothing breaks, as the emote class specifically looks for "animationId" and "audioId". 

__Here are examples of how it is used:__
