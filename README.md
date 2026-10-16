# Automated Linux Backups

A simple Bash script that creates timestamped, compressed backups of a specified directory and automatically removes backups older than 14 days.

This project was built as a hands-on Linux/Bash automation exercise to practice file management, compression, scripting, and basic backup retention.

## What It Does

- Creates a compressed `.tar.gz` backup of a specified directory
- Adds a timestamp to each backup filename
- Verifies that the source and backup directories exist
- Automatically removes backups older than 14 days
- Provides basic success and error messages

## Technologies

- **Linux**
- **Bash**
- **tar**
- **find**

## How It Works

The script uses two configurable directories:

```bash
SOURCE_DIR="/var/www/html"
BACKUP_DIR="/mnt/backup_drive"
```

When executed, it:

1. Checks that the source directory exists.
2. Checks that the backup destination exists.
3. Creates a timestamped compressed archive using `tar`.
4. Saves the backup to the configured backup directory.
5. Removes backup archives older than 14 days.

Example backup filename:

```text
backup_2026-10-16_10-45-32.tar.gz
```

## Usage

Clone the repository:

```bash
git clone https://github.com/jgaleano317/Automated-Backups.git
cd Automated-Backups
```

Make the script executable:

```bash
chmod +x backup.sh
```

Run the script:

```bash
./backup.sh
```

> **Note:** The default paths in the script are examples. Update `SOURCE_DIR` and `BACKUP_DIR` to match your Linux environment before running it.

## What I Learned

This project helped me practice Bash scripting and Linux file management while working through a simple real-world automation task.

Key areas I practiced include:

- Bash variables and conditional statements
- File and directory validation
- `tar` compression
- Timestamp generation
- File retention using `find`
- Basic error handling with `set -euo pipefail`

## Future Improvements

Possible improvements include:

- Adding logging to a dedicated log file
- Sending notifications when a backup succeeds or fails
- Scheduling the script with `cron` or a systemd timer
- Adding backup verification
