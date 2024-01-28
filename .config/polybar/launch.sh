#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar --config=$HOME/.config/polybar/config.ini top 2>&1 | tee -a /tmp/polybar1.log & disown
sleep 2
polybar --config=$HOME/.config/polybar/config.ini bottom 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Polybar launched..."
