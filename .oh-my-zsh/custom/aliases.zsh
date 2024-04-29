alias keebuk="setxkbmap gb"
alias keebus="setxkbmap us"

alias vim=nvim

alias job="source $HOME/scripts/job.sh"
# Commenting out as this isn't a VM
# alias remount="sudo mount -t fuse.vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other"
alias noderoot="kubectl run privpod --rm -it --image alpine --privileged --overrides '{\"spec\":{\"hostPID\": true}}' --command nsenter -- --mount=/proc/1/ns/mnt"
alias kdo="kubectl --dry-run=client -o yaml"
alias whaler="docker run -t --rm -v /var/run/docker.sock:/var/run/docker.sock:ro pegleg/whaler -sV=1.36"
alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
