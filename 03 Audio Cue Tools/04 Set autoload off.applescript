##### QLAB PROGRAMMING SCRIPTS
##### Ben Smith 2020-21
#### Run in separate process: FALSE

### Set autoload off


tell front workspace
	
	repeat with eachCue in (selected as list)
		set autoload of eachCue to false
	end repeat
	
end tell