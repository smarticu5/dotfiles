tmux split-window -h 
tmux split-window -h 
tmux set synchronize-panes
gcloud compute ssh kubernetes-worker-$(echo $TMUX_PANE | cut -d "%" -f 2)
