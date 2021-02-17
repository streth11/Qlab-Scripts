##### QLAB PROGRAMMING SCRIPTS
##### Ben Smith 2020-21
#### Run in separate process: FALSE

### Put selected cue(s) in a new GROUP Cue - READ WARNING!!!!!


tell front workspace
	
	try -- This will stop the script if we're in a cart, as it doesn't make sense to continue!
		set inACart to mode of current cue list -- ###FIXME### As of 4.1.3, this throws an error for carts; if this is fixed this section won't work
	on error
		return
	end try
	
	set selectedCues to (selected as list)
	
	if (count selectedCues) is not 0 then
		
		set selected to last item of selectedCues -- Protect against default behaviour
		make type "Group"
		set groupCue to last item of (selected as list)
		set groupCueIsIn to parent of groupCue
		
		repeat with eachCue in selectedCues
			if contents of eachCue is not groupCueIsIn then -- Skip a Group Cue that contains the new Group Cue
				set eachCueID to uniqueID of eachCue
				try
					move cue id eachCueID of parent of eachCue to end of groupCue
				end try
			end if
		end repeat
		
	end if
	
end tell