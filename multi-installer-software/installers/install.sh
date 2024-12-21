#!/bin/bash

# Main installation script for multi-installer software

OS="$(uname)"

case "$OS" in
    "Linux")
        echo "Detected Linux OS."
        bash ./installers/linux/install.sh
        ;;
    "Darwin")
        echo "Detected macOS."
        bash ./installers/mac/install.sh
        ;;
    *Windows*)
        echo "Detected Windows OS."
        ./installers/windows/install.bat
        ;;
    *)
        echo "Unsupported operating system: $OS"
        exit 1
        ;;
esac