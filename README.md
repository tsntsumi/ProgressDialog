ProgressDialog
==============

Cocoa dialog with progress bar controllable by AppleScript

```AppleScript
tell application "ProgressDialog"
    set name of window 1 to "example"
    set message of window 1 to "Processing..."
    set indeterminate of window 1 to true
end tell

delay 3
tell application "ProgressDialog"
    set indeterminate of window 1 to false
end tell

set i to 3

repeat 8 times
    tell application "ProgressDialog"
        set message of window 1 to ("Processing... " & (i * 10) & "%")
        set percent of window 1 to (i * 10)
    end tell
    delay 1
    set i to (i + 1)
end repeat

tell application "ProgressDialog"
    quit
end tell
```

