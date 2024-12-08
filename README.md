# Dotfiles Repository

This repository contains custom configurations and setup scripts for my shell environment.

---

## **Directory and File Overview**

### **Directories:**
- **`bin/`**: Contains shell scripts for automating environment setup and cleanup:
  - `linux.sh`: Sets up custom environment settings.
  - `cleanup.sh`: Reverts the environment back to its original state.

- **`etc/`**: Contains configuration files:
  - `bashrc_custom`: Custom Bash configurations (environment variables, aliases).
  - `nanorc`: Custom Nano editor configurations.

---

### **Files:**
- **`.gitignore`**: Specifies files and directories Git should ignore.
- **`Makefile`**: Automates setup and cleanup processes using the `make` command.
- **`README.md`**: This file, explaining the project structure.

---

## **How to Use**

1. **Run Setup:**
   ```bash
   make linux
