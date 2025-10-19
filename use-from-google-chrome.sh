#!/bin/bash

# Find Google Chrome
if ! [ -x "$(command -v google-chrome-stable)" ]; then
	echo "google-chrome not found on PATH" >&2
	exit 1
fi

# Find Widevine directory in Google Chrome install
WIDEVINE_DIR="/opt/google/chrome/WidevineCdm"
if ! [ -d "$WIDEVINE_DIR" ]; then
	echo "Can't find Widevine in your Google Chrome install"
	exit 1
fi

# Find Helium Browser directory
CHROMIUM_DIR="/opt/helium-browser-bin"
if [ -z "$CHROMIUM_DIR" ]; then
	exit 1
fi

# Link Widevine from Google Chrome to Helium Browser
sudo ln -s $WIDEVINE_DIR $CHROMIUM_DIR/

