#!/bin/bash

# I2C parameters
I2C_BUS=1
I2C_ADDR=0x48
REG_TEMP=0x00

# Check if i2cget is available
if ! command -v i2cget &> /dev/null; then
    echo "ERROR: i2cget not found. PLEASE INSTALL i2c-tools."
    exit 1
fi

# Infinite loop to read temperature
while true; do
    # Run i2cget and capture output
    TEMP_RAW=$(i2cget -y $I2C_BUS $I2C_ADDR $REG_TEMP 2>/dev/null)

    # Check if i2cget returned a valid value
    if [[ $? -ne 0 ]] || [[ "$TEMP_RAW" != "0x"* || -z "$TEMP_RAW" ]]; then
        echo "ERROR: Failed to read temperature from LM75 (addr: $I2C_ADDR on bus $I2C_BUS)."
        sleep 1
        continue
    fi

    # Convert hex to decimal (remove '0x' prefix)
    TEMP_DEC=$((16#$TEMP_RAW))

    # Handle negative temperatures (LM75 uses two's complement for negative values)
    if [ $TEMP_DEC -ge 128 ]; then
        TEMP_DEC=$(( $TEMP_DEC - 256 ))
    fi

    # Convert to Celsius (LM75: 0.5 C per LSB)
    TEMP_C=$(echo "scale=1; $TEMP_DEC * 0.5" | bc)

    # Print the temperature
    echo "Temperature: $TEMP_C C"

    # Wait 1 second
    sleep 1
done
