#!/bin/bash

# Run the bluetooth command and store the output
bluetooth_status=$(bluetooth)

# Check if the output contains "bluetooth = on"
if [[ $bluetooth_status == *"bluetooth = on"* ]]; then
    bluetooth off
else
    bluetooth on && blueberry
fi

