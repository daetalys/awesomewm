#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}
run lxsession &
run nm-applet &
run picom &
run nitrogen --restore &