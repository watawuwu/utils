-- alias ssh="osascript :path/ssh_with_profile.scpt"

on run argv

    -- use space
    set text item delimiters of AppleScript to space
    set cmd to argv as string

    -- Too lame!!
    if cmd contains "development" then
        set profile to "development" as text
    else if cmd contains "dev" then
        set profile to "development" as text

    else if cmd contains "debug" then
        set profile to "debug" as text
    else if cmd contains "dbg" then
        set profile to "debug" as text

    else if cmd contains "planner" then
        set profile to "planner" as text
    else if cmd contains "plan" then
        set profile to "planner" as text

    else if cmd contains "stage" then
        set profile to "stage" as text
    else if cmd contains "stg" then
        set profile to "stage" as text

    else if cmd contains "report" then
        set profile to "report" as text
    else if cmd contains "rep" then
        set profile to "report" as text

    else if cmd contains "stress" then
        set profile to "stress" as text
    else if cmd contains "perf" then
        set profile to "stress" as text

    else if cmd contains "production" then
        set profile to "production" as text
    else if cmd contains "pro" then
        set profile to "production" as text

    else
        set profile to "ssh" as text
    end if


    tell application "iTerm 2"
        activate
        tell (make new terminal)
            launch session profile
            tell the last session
                write text "/usr/bin/ssh " & cmd
            end tell
        end tell
    end tell
end run
