export WIN_HOME="/mnt/c/Users/$(cmd.exe /c "echo %USERNAME%" 2>/dev/null | tr -d '\r')"
export DESKTOP="$WIN_HOME/OneDrive/Desktop"

if status is-interactive
    alias ll='ls -la'
    alias cls='clear'
    alias clera='clear'
    alias CLEAR='clear'
    alias CLERA='clear'
    alias CLS='clear'
    alias d='cd $DESKTOP'
    alias desk='cd $DESKTOP'
    alias desktop='cd $DESKTOP'
    alias D='cd $DESKTOP'
    alias DESK='cd $DESKTOP'
    alias DESKTOP='cd $DESKTOP'
    alias weather='curl https://wttr.in/'
end
