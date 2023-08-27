#!/bin/bash

if [ "$(uname)" != "Darwin" ]; then
	echo "Not macOS!"
	exit 1
fi

# ====================
#
# Dock
#
# ====================

# Autohides the Dock
defaults write com.apple.dock autohide -bool true

# Show recently used apps in a separate section of the Dock
defaults write com.apple.dock show-recents -bool false

# ====================
#
# Finder
#
# ====================

# Show all file extensions in the Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show hidden files in the Finder
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show path bar in the bottom of the Finder windows
defaults write com.apple.finder ShowPathbar -bool true

# Set the default view style for folders without custom setting
defaults write com.apple.finder FXPreferredViewStyle -string Nlsv

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# ====================
#
# Desktop
#
# ====================

# Keep folders on top when sorting
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true

# ====================
#
# Menu Bar
#
# ====================

# Flash clock time separators
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false

# Set menubar digital clock format
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM HH:mm:ss"

# ====================
#
# Trackpad
#
# ====================

# Click weight (threshold)
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 1

# Enable dragging with three finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# ====================
#
# Keyboard
#
# ====================

defaults write NSGlobalDomain KeyRepeat -int 5
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool true

# ====================
#
# Mission Control
#
# ====================

# Group windows by application
defaults write com.apple.dock expose-group-apps -bool true

# ====================
#
# Feedback Assistant
#
# ====================
defaults write com.apple.appleseed.FeedbackAssistant Autogather -bool false

for app in "Dock" \
	"Finder" \
	"SystemUIServer"; do
	killall "${app}" &>/dev/null
done
