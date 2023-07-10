function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-but-train'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'die'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'alive'); --put in mods/music/
end