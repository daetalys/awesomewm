#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}
run picom &
run pipewire &
run pipewire-pulse &
run wireplumber &
run pa-applet &
run nm-applet &
run lxsession &
run kdeconnectd &
run kdeconnect-indicator &
run dunst &
