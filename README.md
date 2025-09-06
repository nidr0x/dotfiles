# Dotfiles

This repository contains my personal dotfiles, managed with [Chezmoi](https://www.chezmoi.io/).

## Prerequisites

**Install Chezmoi:**

You can find detailed installation instructions on the [Chezmoi website](https://www.chezmoi.io/install/). Here are some common ways:

- **Homebrew (macOS/Linux):**

  ```bash
  brew install chezmoi
  ```

- **Linux (Debian/Ubuntu):**

  ```bash
  sudo apt install chezmoi
  ```

- **Other platforms:** Refer to the [official documentation](https://www.chezmoi.io/install/) for your specific operating system.

## Getting Started

Follow these steps to apply these dotfiles to your system:

1. **Clone this repository:**

   ```bash
   git clone git@github.com:nidr0x/dotfiles.git
   ```

   Navigate to your home directory and run the following command. This will prompt you to confirm changes before applying them.

   ```bash
   chezmoi init --apply
   ```

   Chezmoi will then prompt you to review and confirm the changes it will make to your system. Review them carefully before proceeding.

## Updating Dotfiles

To pull the latest changes from this repository and apply them to your system:

```bash
chezmoi update
```
