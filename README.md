# Hyprland Environment Configuration

A comprehensive installation and configuration setup for a complete Hyprland window manager environment on Arch Linux. This repository provides automated scripts to install and configure all essential components for a modern, tiling window manager setup.

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [What Gets Installed](#what-gets-installed)
- [Configuration Files](#configuration-files)
- [Post-Installation](#post-installation)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)

## 🎯 Overview

This repository automates the setup of a complete Hyprland environment, including:
- Hyprland window manager with custom configuration
- Essential system services (audio, network, bluetooth)
- Status bar, launcher, and utility applications
- Screen locker and session manager
- Notification daemon
- Terminal emulator with custom theme
- Wallpaper management
- Screenshot tools
- And much more!

## 🖼️ Showcase

Here are some previews of the final Hyprland rice you’ll get with this setup:

<table>
  <tr>
    <td>
      <img src="assets/showcase/1.png" alt="Hyprland Showcase 1" width="350"/>
    </td>
    <td>
      <img src="assets/showcase/2.png" alt="Hyprland Showcase 2" width="350"/>
    </td>
  </tr>
  <tr>
    <td>
      <img src="assets/showcase/3.png" alt="Hyprland Showcase 3" width="350"/>
    </td>
    <td>
      <img src="assets/showcase/4.png" alt="Hyprland Showcase 4" width="350"/>
    </td>
  </tr>
</table>


## ✨ Features

### Core Components
- **Hyprland** - Dynamic tiling Wayland compositor
- **Waybar** - Highly customizable status bar
- **Tofi** - Fast application launcher
- **Kitty** - GPU-accelerated terminal emulator
- **Dunst** - Lightweight notification daemon

### System Utilities
- **Hyprlock** - Screen locker for Hyprland
- **Hypridle** - Idle management daemon
- **Wlogout** - Session manager with logout menu
- **SWWW** - Wallpaper manager
- **Grimblast** - Screenshot utility
- **Hyprpicker** - Color picker tool
- **Cliphist** - Clipboard manager

### System Services
- **Pipewire** - Audio server
- **NetworkManager** - Network management
- **Bluetooth** - Bluetooth support with GUI
- **SDDM** - Display manager

## 🔧 Prerequisites

Before running the installation script, ensure you have:

1. **Arch Linux** - This script is designed specifically for Arch Linux
2. **Root/Sudo Access** - The installation script must be run as root
3. **Internet Connection** - Required for downloading packages
4. **Git** - For cloning the repository (if installing from source)

## 🚀 Installation

### Step 1: Clone the Repository

```bash
git clone https://github.com/M-SaaD-H/hyprland-environment.git
cd hyprland-environment
```

### Step 2: Make the Script Executable

```bash
chmod +x install.sh
```

### Step 3: Run the Installation Script

**Important:** The script must be run as root:

```bash
sudo ./install.sh
```

### Step 4: Follow the Interactive Prompts

The installation script is interactive and will ask for confirmation before each major step:
- **Prerequisites Setup** - System packages, fonts, and essential tools
- **Hyprland & Critical Software Setup** - Window manager and core components
- **Basic Utilities & Configs Setup** - Status bar, launcher, and utilities
- **Final Setup** - Completion message and repository information

You can choose to:
- Accept (y) - Proceed with the installation
- Skip (n) - Skip the current step
- Retry - If a step fails, you'll be prompted to retry

## 📁 Configuration Files

All configuration files are copied to your home directory's `.config` folder:

```
~/.config/
├── hypr/
│   ├── hyprland.conf    # Main Hyprland configuration
│   ├── hyprlock.conf    # Screen locker configuration
│   └── hypridle.conf    # Idle management configuration
├── waybar/
│   ├── config.jsonc     # Waybar configuration
│   └── style.css        # Waybar styling
├── tofi/
│   ├── configA          # Tofi application launcher config
│   └── configV          # Tofi clipboard
├── dunst/
│   └── dunstrc          # Notification daemon config
├── kitty/
│   ├── kitty.conf       # Terminal configuration
│   └── theme.conf       # Terminal theme
├── wlogout/
│   ├── layout           # Session manager layout
│   ├── style.css        # Session manager styling
│   ├── logoutlaunch.sh # Launch script
│   └── icons/           # Session manager icons
└── assets/
    └── backgrounds/     # Sample wallpapers
```

## 🔄 Post-Installation

After installation completes:

1. **Reboot your system** to start using SDDM and Hyprland:
   ```bash
   sudo reboot
   ```

2. **Select Hyprland** from the SDDM display manager login screen

3. **Customize your setup** by editing configuration files in `~/.config/`

4. **Add your own wallpapers** to `~/.config/assets/backgrounds/`

5. **Configure keybindings** in `~/.config/hypr/hyprland.conf` to match your preferences

## 🐛 Troubleshooting

### Installation Issues

1. **Script fails with "Please run as root"**
   - Make sure you're running the script with `sudo ./install.sh`

2. **YAY installation fails**
   - Ensure you have `git` and `base-devel` installed
   - Check your internet connection
   - You may need to manually install YAY if the automated installation fails

3. **AUR package installation fails**
   - Some AUR packages may require manual intervention
   - Check the AUR page for the specific package for dependencies
   - You can manually install failed packages later using `yay -S <package-name>`

4. **OS detection warning**
   - The script is designed for Arch Linux
   - You can proceed anyway, but some packages may not be available on other distributions

### Runtime Issues

1. **Hyprland doesn't start**
   - Check logs: `journalctl -u hyprland` or `~/.config/hypr/hyprland.log`
   - Verify your graphics drivers are installed
   - Ensure you're using a Wayland-compatible setup

2. **Audio not working**
   - Check if Pipewire is running: `systemctl --user status pipewire`
   - Restart audio services: `systemctl --user restart pipewire`

3. **Network not working**
   - Check NetworkManager status: `systemctl status NetworkManager`
   - Use `nmcli` or `nmtui` to configure network connections

4. **Bluetooth not working**
   - Check bluetooth service: `systemctl status bluetooth`
   - Start bluetooth: `sudo systemctl start bluetooth`

5. **Configuration errors**
   - Check configuration syntax in `~/.config/hypr/hyprland.conf`
   - Validate JSON in Waybar config: `~/.config/waybar/config.jsonc`
   - Review logs in `~/logs/hyprland_install.log`

### Getting Help

- Check the [GitHub Issues](https://github.com/M-SaaD-H/hyprland-environment/issues) section
- Open a new issue if you can't find a solution
- Review the [Hyprland Wiki](https://wiki.hyprland.org/) for configuration help

## 📝 Logs

Installation logs are saved to:
```
~/logs/hyprland_install.log
```

This log file contains:
- Timestamps for each operation
- Success/failure status
- User choices (accept/skip)
- Error messages

## 🤝 Contributing

Contributions are welcome! If you find this repository helpful, please consider:

- ⭐ Giving it a star on GitHub
- 🐛 Reporting bugs or issues
- 💡 Suggesting new features
- 🔧 Submitting pull requests
- 📖 Improving documentation

Every contribution, big or small, is valuable to the community!

## 📄 License

This project is licensed under the MIT License.  
See the [LICENSE](LICENSE) file for full details.

You are free to use, modify, and distribute this software under the terms of the MIT License.

## 🔗 Links

- **GitHub Repository**: https://github.com/M-SaaD-H/hyprland-environment
- **Hyprland Wiki**: https://wiki.hyprland.org/
- **Hyprland GitHub**: https://github.com/hyprwm/Hyprland

## 🙏 Acknowledgments

- Hyprland developers and community
- All the developers of the tools and utilities included in this setup
- The Arch Linux community

---

**Enjoy your new Hyprland environment!** 🎉

