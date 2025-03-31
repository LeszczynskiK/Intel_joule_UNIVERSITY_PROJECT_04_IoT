#!/bin/bash

# Infinite loop
while true; do
    # LED1 ON, LED2 OFF
    gpiopset gpiochip0 20=1 21=0

    # LED1 OFF, LED2 ON
    gpiopset gpiochip0 20=0 21=1

    sleep 1
done
