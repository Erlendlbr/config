#!/usr/bin/env bash

NUMBER=$(xinput | grep ELAN | grep pointer | awk '{print $5}' | sed 's/[^0-9]*//g')

xinput map-to-output $NUMBER eDP-1
