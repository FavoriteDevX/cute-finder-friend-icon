#!/bin/bash

# Define paths
DOCK_RESOURCES="/System/Library/CoreServices/Dock.app/Contents/Resources"
ASSETS_DIR="./assets"

echo "Replacing Finder Dock icons..."

# Copy new icons to the Dock resources directory
# Note: This requires write permissions to the directory
sudo cp "$ASSETS_DIR/finder.png" "$DOCK_RESOURCES/finder.png"
sudo cp "$ASSETS_DIR/finder@2x.png" "$DOCK_RESOURCES/finder@2x.png"

echo "Clearing icon cache..."
# Clear macOS Dock icon cache
sudo rm -rf /private/var/folders/*/*/*/com.apple.dock.iconcache

echo "Restarting Dock..."
# Restart Dock to apply changes
killall Dock

echo "Done! Your cute Finder icon is now active."
