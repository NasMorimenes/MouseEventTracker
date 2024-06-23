# MouseEventTracker

MouseEventTracker is an AutoHotkey script that captures and tracks mouse movements using low-level hooks. It provides a modular structure to monitor mouse activity, manage hooks, and handle events dynamically.

## Features

- Capture mouse movements and positions
- Display real-time tooltip with mouse coordinates and movement time
- Modular structure for easy maintenance and extension

## Files

- `Main.ahk`: The main script that initializes the project and manages execution.
- `Hooks.ahk`: Contains functions related to hooks.
- `Utilities.ahk`: Utility functions for hook management.
- `QueryMouseMove.ahk`: Function to manage mouse movement variables.
- `Initialize.ahk`: Initialization and cleanup functions.

## Installation

1. Download and install [AutoHotkey](https://www.autohotkey.com/).
2. Clone this repository to your local machine:
   ```sh
   git clone https://github.com/yourusername/MouseEventTracker.git
3. Run Main.ahk to start the script.

## Usage
Press Esc to exit the script.
The script will display a tooltip with the mouse position and time since the last movement.
License
This project is licensed under the MIT License.

## Acknowledgements
Special thanks to the open-source community and the AutoHotkey developers for providing such a powerful and flexible scripting language. Your contributions and dedication make projects like this possible.


**`.gitignore`**
```gitignore
# Ignore AutoHotkey compiled scripts
*.exe
*.ahk~
