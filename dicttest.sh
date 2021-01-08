#!/bin/bash -x
declare -A sounds
sounds[dog]="bark"
sounds[cow]="mow"
sounds[bird]="tweet"
sounds[wolf]="howl"
echo "Dog sound" ${Sound[dog]}
echo "Aminal sounds" ${sound[@]}
echo "All animals" ${!sounds[@]}
echo "number of animals" ${#sounds[@]}
unset sounds[dog]
