# helium-widewine-archlinux

This is a fork of [@proprietary/chromium-widevine](https://github.com/proprietary/chromium-widevine), now a fork maintained by [@kohnish/chromium-widevine](https://github.com/kohnish/chromium-widevine).

## Overview

Instructions and scripts for installing Widevine on Chromium on GNU/Linux, enabling playback of DRM-protected content (Netflix, Spotify, etc.).

## Important Notes

**Personal Use & Irregular Updates**: This repository is primarily for personal use and may not be updated regularly.

**Hardcoded Paths**: The scripts use hardcoded paths for the installed packages. If you installed `helium-browser-bin` or `google-chrome` in non-standard locations (not the default AUR paths), you'll need to manually edit the script files to update the paths before running them.

## Prerequisites

This guide requires the following packages to be already installed:

- `@aur/helium-browser-bin` - Helium browser
- `@aur/google-chrome` - Google Chrome (for Widevine extraction)

Install them using your AUR helper:

```bash
yay -S helium-browser-bin google-chrome
# or
paru -S helium-browser-bin google-chrome
# or
pikaur -S helium-browser-bin google-chrome
```

## Usage

To get started, clone the repository and run the `use-from-google-chrome.sh` script:

```bash
git clone https://github.com/shauryadotp/helium-widewine-archlinux.git
cd helium-widewine-archlinux
./use-from-google-chrome.sh
```

### Test Widevine

Open `test-widevine.html` in Chromium to verify Widevine is working.

## Scripts

- `use-from-google-chrome.sh` - Symlinks Widevine from Google Chrome to Chromium
- `test-widevine.html` - HTML test page for verifying Widevine functionality
- `use-standalone-widevine.sh` - Sets up standalone Widevine installation (currently not recommended due to `fetch-latest-widevine.sh` being non-functional)
- `fetch-latest-widevine.sh` - Currently non-functional due to Google removing download links (kept for reference)

Licensed under the Apache License, Version 2.0. See [LICENSE](./LICENSE) for details.

## References

- Original repository: [@proprietary/chromium-widevine](https://github.com/proprietary/chromium-widevine)
- Maintained fork: [@kohnish/chromium-widevine](https://github.com/kohnish/chromium-widevine)
