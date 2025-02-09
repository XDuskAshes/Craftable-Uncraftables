#!/bin/bash

VER="1-0-2"

SRC_DIR="src"
ZIP_FILE="craftableuncraftables.$VER.zip"

echo "Changing to source directory: $SRC_DIR"

if cd "$SRC_DIR"; then
    echo "Creating zip file: $ZIP_FILE"

    if tar -acvf "../$ZIP_FILE" *; then
        echo "Zip file created successfully: $ZIP_FILE"
    else
        echo "Failed to create zip file."
        exit 1
    fi
    
    cd - > /dev/null
else
    echo "Failed to change to source directory: $SRC_DIR"
    exit 1
fi
