  GNU nano 4.8                                                   zad33.sh                                                              
#!/bin/bash

# GPIO pins for segments
A=14
B=15
C=18
D=23
E=24
F=25
G=8
ENABLE=7

# Function to turn off all segments
clear_display() {
    echo "Clearing display..."
    gpioset gpiochip0 $A=0 $B=0 $C=0 $D=0 $E=0 $F=0 $G=0 $ENABLE=0
    sleep 0.1  # Small delay to ensure GPIO states settle
}

# Function to display "2"
display_2() {
    echo "Displaying 2..."
    gpioset gpiochip0 $A=1 $B=1 $C=0 $D=1 $E=1 $F=0 $G=1 $ENABLE=1
}

# Function to display "5"
display_5() {
    echo "Displaying 5..."
    # Explicitly ensure all segments are off first
    gpioset gpiochip0 $A=0 $B=0 $C=0 $D=0 $E=0 $F=0 $G=0 $ENABLE=0
    sleep 0.1  # Small delay to ensure states are reset
    gpioset gpiochip0 $A=1 $B=0 $C=1 $D=1 $E=0 $F=1 $G=1 $ENABLE=1
}

# Main sequence
clear_display
sleep 1
display_2
sleep 1
clear_display
sleep 1
display_5
sleep 1
clear_display

