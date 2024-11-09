#!/usr/bin/env bash

set -x 

# Directory containing Brewfiles, defaulting to apps
BREWFILE_DIR="${1:-apps}"

# Date for backup naming
DATE=$(date +%Y%m%d-%H%M%S)
BACKUP_FILE="Brewfile.backup.${DATE}"

# Create a backup of currently installed packages
echo "Creating backup of existing packages in $BACKUP_FILE..."
brew bundle dump --file="$BREWFILE_DIR/$BACKUP_FILE" --force

# Find all Brewfiles in the specified directory, excluding backup files and .lock.json files
brewfiles=$(find "$BREWFILE_DIR" -maxdepth 1 -type f -name "Brewfile*" ! -name "*.lock.json" ! -name "Brewfile.backup.*")

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Please install Homebrew first: https://brew.sh/"
    exit 1
fi

# Function to install or update packages/apps from a Brewfile
install_brewfile() {
    local brewfile=$1
    echo "Installing packages from $brewfile..."
    brew bundle install --file "$brewfile"
}

# Function to uninstall packages/apps that are no longer listed in a Brewfile
cleanup_brewfile() {
    local brewfile=$1
    echo "Cleaning up packages not listed in $brewfile..."
    brew bundle cleanup --file "$brewfile" --force
}

# Main script
if [ -z "$brewfiles" ]; then
    echo "No Brewfile found in $BREWFILE_DIR"
    exit 1
fi

# Main script
for brewfile in $brewfiles; do
    install_brewfile "$brewfile"
    #cleanup_brewfile "$brewfile"
done

echo "All Brewfiles have been processed."
