#!/bin/bash

set -e

if [ "$(uname)" != "Darwin" ]; then
  echo "Not macOS!"
  exit 1
fi

# ====================
# Dock
# ====================
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-recents -bool true

# ====================
# Finder
# ====================
defaults write -g AppleShowAllExtensions -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder FXPreferredViewStyle -string Nlsv
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# ====================
# Desktop
# ====================
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true

# ====================
# Menu Bar
# ====================
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM HH:mm:ss"

# ====================
# Trackpad
# ====================
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# ====================
# Keyboard
# ====================
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey -bool false

# ====================
# Mission Control
# ====================
defaults write com.apple.dock expose-group-apps -bool true
defaults write com.apple.spaces spans-displays -bool false
defaults write com.apple.dock mru-spaces false

# ====================
# Feedback Assistant
# ====================
defaults write com.apple.appleseed.FeedbackAssistant Autogather -bool false

for app in "Dock" "Finder" "SystemUIServer"; do
  killall "${app}" &>/dev/null || true
done
