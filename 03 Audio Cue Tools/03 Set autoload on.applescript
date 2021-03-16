-- @description Set autoload on
-- @author Ben Smith
-- @link bensmithsound.uk
-- @version 1.0
-- @testedmacos 10.13.6
-- @testedqlab 4.6.9
-- @about Turns on autoload for the selected cue
-- @separateprocess FALSE

-- @changelog
--   v1.0  + init


tell front workspace
	
	repeat with eachCue in (selected as list)
		set autoload of eachCue to true
	end repeat
	
end tell