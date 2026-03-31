    #!/bin/bash
    # Script 1: System Identity Report
    # Author: PRADEEP N | Software Focus: Python
    # Using: variables, echo, command substitution, and box-formatting      

    # Setting up project-specific identifiers 
    NAME="Nagahimesh Vuppala"                # Your name for the report header
    SOFTWARE_CHOICE="Python"        # The open-source tool we are auditing
 

    # Gathering live environmental data from the system
    # These lines capture the technical "DNA" of the current machine
    KERNEL=$(uname -r)                    # Grabbing the specific kernel build version
    USER_NAME=$(whoami)                   # Identifying t
#!/bin/bash

# --------------------------------------------
# FOSS Package Inspector - Python
# This script checks if Python is installed,
# displays its version, and prints a description
# using a case statement.
# --------------------------------------------

# Step 1: Set default package name
pkg="python3"

# Step 2: Check if python3 command exists
echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║          FOSS PACKAGE INSPECTOR                         ║"
echo "╠══════════════════════════════════════════════════════════╣"
echo "║  Inspecting package: $PACKAGE"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""
# 'command -v' checks if the command is available in the system
if command -v "$pkg" >/dev/null 2>&1; then
    
    # If found, print success message
    echo " $pkg is installed."

    # Step 3: Get Python version
    # '--version' prints version info
    version=$($pkg --version 2>&1)

    # Display version
    echo "Version: $version"

    # Step 4: Use case statement to describe software
    case "$pkg" in
        python|python3)
            echo "Description: Python is a high-level, interpreted programming language used for web development, data analysis, artificial intelligence, automation, and more."
            ;;
        
        # Default case (not really needed here but added for completeness)
        *)
            echo "Description: No predefined description available."
            ;;
    esac

else
    # If python3 is not found, check for 'python'
    if command -v python >/dev/null 2>&1; then
        
        pkg="python"
        echo " $pkg is installed."

        # Get version of python
        version=$(python --version 2>&1)
        echo "Version: $version"

        # Case statement again
        case "$pkg" in
            python|python3)
                echo "Description: Python is a high-level, interpreted programming language used for web development, data analysis, artificial intelligence, automation, and more."
                ;;
            *)
                echo "Description: No predefined description available."
                ;;
        esac

    else
        # If neither python nor python3 is found
        echo " Python is NOT installed on this system."
    fi
fi
# --- End of Script 2 ---he person currently at the terminal
    HOME_DIR=$HOME                        # Locating the path to the user's primary folder
    UPTIME=$(uptime -p)                   # Checking how long the system has been running
    CURRENT_DATE=$(date '+%A, %d %B %Y')  # Organizing the date for a professional look
    CURRENT_TIME=$(date '+%I:%M:%S %p')   # Keeping track of the exact execution time

    # Extracting the distribution name from /etc/os-release
    
    DISTRO_NAME=$(grep -w "PRETTY_NAME" /etc/os-release | cut -d'"' -f2)

    # --- Display the system identity report ---
    echo ""
    echo "╔══════════════════════════════════════════════════════════╗"
    echo "║           OPEN SOURCE AUDIT — SYSTEM IDENTITY           ║"
    echo "╠══════════════════════════════════════════════════════════╣"
    echo "║  Student    : $NAME"
    echo "║  Software   : $SOFTWARE_CHOICE"
    echo "╠══════════════════════════════════════════════════════════╣"
    echo "║  Distribution : $DISTRO_NAME"
    echo "║  Kernel       : $KERNEL"
    echo "║  User         : $USER_NAME"
    echo "║  Home Dir     : $HOME_DIR"
    echo "║  Uptime       : $UPTIME"
    echo "║  Date         : $CURRENT_DATE"
    echo "║  Time         : $CURRENT_TIME"
    echo "╠══════════════════════════════════════════════════════════╣"
    echo "║  OS License   : GNU General Public License v2 (GPLv2)   ║"
    echo "║  The Linux kernel is licensed under GPLv2, which        ║"
    echo "║  guarantees the freedom to use, study, modify,          ║"
    echo "╚══════════════════════════════════════════════════════════╝"
    echo ""

# --- End of Script 1 ---
