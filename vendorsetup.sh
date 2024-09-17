#!/bin/bash

# Set the device name.
device_name="RMX3461"

# Display a well-aligned kitty ASCII art at the start with paws.
echo -e "Meow, meow! It's time to kittyfy $device_name!\n"
echo -e "  /\\_____/\\" 
echo -e " /  o   o  \\"
echo -e "( ==  ^  == )"
echo -e " )  (_)  ("
echo -e "/         \\"
echo -e " \\_______/"
echo -e "  |     |\n"

# Function to remove a directory if it exists and echo a message.
remove_directory() {
    local directory="$1"
    if [ -d "$directory" ]; then
        echo -e "Meow! Removing the old $directory directory..."
        rm -rf "$directory"
        echo -e "Meow! $directory directory has been removed.\n"
    else
        echo -e "Meow! $directory directory does not exist. No need to remove.\n"
    fi
}

# Function to clone a Git repository with error handling.
clone_repository() {
    local url="$1"
    local branch="$2"
    local directory="$3"
    
    echo -n "Meow! Cloning $url into $directory... "
    if git clone --depth 1 --recurse-submodules "$url" -b "$branch" "$directory" &> /dev/null; then
        echo -e "Meow! Successfully cloned $url for $device_name into $directory.\n"
    else
        echo -e "Meow! Cloning $url for $device_name failed.\n"
    fi
}

# Improved readability: Separation of sections with comments.

# --- Removing existing directories ---
#echo -e "Step 1: Removing existing directories...\n"
#remove_directory "./kernel/realme/RMX3461"

# --- Cloning repositories ---
echo -e "Step 2: Cloning repositories ...\n"
clone_repository "https://github.com/lazycodebuilder/android_kernel_oplus_RMX3461" "14.0" "./kernel/realme/RMX3461"

# --- Completion message ---
echo -e "Step 5: All repositories have been successfully cloned. Happy meowtifying!\n"

# Kitty reminder about removing vendorsetup.sh.
echo -e "Step 6: Don't forget to remove vendorsetup.sh from the ./device/realme/RMX3461 folder.\n"

# Final message
echo -e "Meow! The meowtification process is complete. You're all set to build for $device_name. Enjoy!"
