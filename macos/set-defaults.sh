# Sets reasonable macOS defaults.
#
# Or, in other words, set shit how I like in macOS.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Run ./set-defaults.sh and you'll be good to go.

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Immediately show file proxy icon on toolbar hover
defaults write -g NSToolbarTitleViewRolloverDelay -float 0

# Configure Finder visual preferences
defaults write com.apple.Finder NewWindowTarget PfHm
defaults write com.apple.Finder NewWindowTargetPath "file:///Users/shg/"
defaults write com.apple.Finder ShowPathbar -bool true
defaults write com.apple.Finder ShowStatusBar -bool true

# Show Package Contents on Cmd+Shift+Down
defaults write com.apple.Finder NSUserKeyEquivalents -dict-add "Show Package Contents" "@$\\U2193"

# Enable calculate all sizes
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ExtendedListViewSettings:calculateAllSizes" bool' 2> /dev/null
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ExtendedListViewSettings:calculateAllSizes" bool true'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ExtendedListViewSettingsV2:calculateAllSizes" bool' 2> /dev/null
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ExtendedListViewSettingsV2:calculateAllSizes" bool true'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ListViewSettings:calculateAllSizes" bool' 2> /dev/null
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ListViewSettings:calculateAllSizes" bool true'

# Configure Dock visual preferences
defaults write com.apple.Dock mineffect suck
defaults write com.apple.Dock showhidden -bool true
defaults write com.apple.Dock show-recents -bool false
defaults write com.apple.Dock slow-motion-allowed -bool true
defaults write com.apple.dock "orientation" -string "left"

# Show the ~/Library folder.
chflags nohidden ~/Library

# Disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Disable opening downloads automatically
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

killall Dock Finder