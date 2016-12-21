#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")"


# Close any open `System Preferences` panes in order to
# avoid overriding the preferences that are being changed.
./close_system_preferences_panes.applescript


./dashboard.sh
./keyboard.sh
./trackpad.sh
./ui_and_ux.sh
