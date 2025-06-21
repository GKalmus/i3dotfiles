#!/bin/bash 

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

monitor_num=$(polybar -m | wc -l)
num=2

if [ "$monitor_num" -eq "$num" ]; then
	MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g') polybar 2>&1 | tee -a /tmp/polybar1.log & disown
	MONITOR=$(polybar -m|head -1|sed -e 's/:.*$//g') polybar 2>&1 | tee -a /tmp/polybar1.log & disown
else
	MONITOR=$(polybar -m|head -1|sed -e 's/:.*$//g') polybar 2>&1 | tee -a /tmp/polybar1.log & disown
fi

echo "Bars launched..."
