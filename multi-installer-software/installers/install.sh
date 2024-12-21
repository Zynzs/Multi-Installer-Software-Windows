#!/bin/bash

# Main installation script for multi-installer software

OS="$(uname)"

case "$OS" in
    *Windows*)
        echo "Detected Windows OS."
        ./installers/windows/install.bat
        ;;
    *)
        echo "Unsupported operating system: $OS"
        exit 1
        ;;
esac
