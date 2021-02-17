##### QLAB PROGRAMMING SCRIPTS
##### Ben Smith 2020-21
#### Run in separate process: FALSE

### Create start cue in Main Cue List


tell front workspace
	set originalCueList to q name of current cue list
	if originalCueList is not "Main Cue List" then
		set selectedCues to selected as list
		set current cue list to first cue list whose q name is "Main Cue List"
		repeat with eachCue in selectedCues
			make type "Start"
			set newCue to last item of (selected as list)
			set cue target of newCue to eachCue
			set nameString to ""
			set eachNumber to q number of eachCue
			set eachName to q name of eachCue
			if eachName is not "" then
				set nameString to nameString & eachName
			end if
			if originalCueList is not "" then
				set nameString to nameString & " | " & originalCueList
			end if
			set q name of newCue to nameString
			set q number of newCue to ("s" & eachNumber)
			
			
		end repeat
		delay 0.5 -- Let you see it
		set current cue list to first cue list whose q name is originalCueList
		set playback position of current cue list to last item of selectedCues
		(* This will maintain the selection (more or less) if "Playback position is always the selected cue" is ON *)
	end if
end tell