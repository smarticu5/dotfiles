polybar-msg cmd quit

# echo "---" | tee -a /tmp/polybar.log

# polybar --config=~/.config/polybar/config.ini example 2>&1 | tee -a /tmp/polybar.log & disown

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --config=~/.config/polybar/config.ini --reload example &
  done
else
  polybar --config ~/.config/polybar/config.ini --reload example &
fi
