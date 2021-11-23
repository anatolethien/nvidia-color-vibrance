#!/bin/bash

# Script written by @anatolethien

CURRENT_VIBRANCE=$(nvidia-settings --query DigitalVibrance | grep --max-count=1 Attribute | awk '{ print $4 }' | tr -d '.')

echo "Current color vibrance: $CURRENT_VIBRANCE"

read -p "Enter new color vibrance value (between -1024 and 1023): " VIBRANCE

nvidia-settings --assign DigitalVibrance=$VIBRANCE > /dev/null

echo "New color vibrance: $VIBRANCE"

