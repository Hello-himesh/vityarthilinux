# oss-audit — The Open Source Audit (Git)

**Course:** Open Source Software (OSS NGMC)  
**Student:** NAGAHIMESH VUPPALA  
**Registration Number:** 24BAI10006  
**Chosen Software:** Python — Programming Language  
**License of Chosen Software:** Python Software Foundation License (PSFL)

---

## About This Project

So this project is basically a part of my Open Source Software course and it's all about getting my hands dirty with how open-source tools actually work in the real world. I mean we can study theory all day but actually seeing things run, breaking them and fixing them is where the real learning happens. Instead of just reading slides I decided to write some shell scripts to explore and analyze systems practically cause thats more fun honestly.

The main software I picked is **Python**, which was created by this guy Guido van Rossum back in the day. Python is like everywhere now you cant escape it. Its one of the most popular open-source languages and this project looks at its background, how its licensed, and what role it plays in the bigger open-source ecosystem.

Along with the Python stuff, the scripts I wrote help with checking system details, analyzing logs, and generally understanding how Linux systems behave when you poke them. Theres some cool stuff in here.

---

## Repository Contents

| Script File | Description |
|-------------|-------------|
| `scripts/system_identity.sh` | Script 1 — System Identity Report |
| `scripts/foss_inspector.sh` | Script 2 — FOSS Package Inspector |
| `scripts/disk_auditor.sh` | Script 3 — Disk and Permission Auditor |
| `scripts/log_analyzer.sh` | Script 4 — Log File Analyzer |
| `scripts/manifesto_generator.sh` | Script 5 — Open Source Manifesto Generator |
| `README.md` | This file (hopefully readable) |

---

## Script Descriptions

### Script 1 — System Identity Report (`system_identity.sh`)

This one gives you a nice welcome-screen kind of thing. It shows your Linux distribution name, kernel version, who's logged in, their home directory, how long the system has been running, the current date and time, and also mentions the open-source license covering the OS. Its like a digital ID card for your machine.

**Concepts used:** Variables, echo, command substitution `$()`, output formatting, grep, cut.

### Script 2 — FOSS Package Inspector (`foss_inspector.sh`)

So this script checks if a package is installed on your system. By default it looks for `git` but you can give it any package name. It shows the version and details and then prints a little philosophy note about that package using a case statement. I thought it would be nice to add some personality.

**Concepts used:** if-then-else, case statement, dpkg/rpm commands, pipe with grep, command-line arguments.

### Script 3 — Disk and Permission Auditor (`disk_auditor.sh`)

This script goes through important system directories like `/etc`, `/var/log`, `/home`, `/usr/bin`, and `/tmp` and checks their permissions, who owns them, and how much disk space theyre using. It also checks Git's configuration directories cause why not.

**Concepts used:** for loop, arrays, df, du, ls -ld, awk, cut, printf for nice formatting.

### Script 4 — Log File Analyzer (`log_analyzer.sh`)

This one reads a log file line by line and counts how many times a keyword appears (like "error"). Then it prints a summary and shows the last 5 lines that matched. Super useful when your trying to debug something and dont want to scroll through a million lines.

**Concepts used:** while read loop, if-then, counter variables, `$1` and `$2` arguments, grep, tail.

### Script 5 — Open Source Manifesto Generator (`manifesto_generator.sh`)

Ok this one is kinda fun. It asks you three questions interactively and then generates a personalized open-source philosophy manifesto thing and saves it to a `.txt` file. Its like a little reflection on why open source matters to you.

**Concepts used:** read command, string concatenation, file redirection `>` and `>>`, date command, aliases (explained in comments).

---

## How to Run the Scripts

### Prerequisites

- A Linux system (Ubuntu is what I used) — can be native install, virtual machine, or WSL on Windows
- Bash shell (comes with Linux)
- Python 3 installed (for script 2 but also cause my chosen software is Python)

### Step-by-Step Instructions

1. **Clone this repository:**
   ```bash
   git clone https://github.com/prad3p-nagarajan/oss-audit-24MIP10033.git
   cd oss-audit-24MIP10033
   ```

2. **Make all scripts executable:**
   ```bash
   chmod +x scripts/*.sh
   ```

3. **Run Script 1 — System Identity Report:**
   ```bash
   ./scripts/system_identity.sh
   ```
   No arguments needed. Just run it and it shows you the system info.

4. **Run Script 2 — FOSS Package Inspector:**
   ```bash
   # Check git (default package)
   ./scripts/foss_inspector.sh
   
   # Check a different package
   ./scripts/foss_inspector.sh apache2
   ./scripts/foss_inspector.sh firefox
   ```

5. **Run Script 3 — Disk and Permission Auditor:**
   ```bash
   ./scripts/disk_auditor.sh
   ```
   You might need sudo for some directories:
   ```bash
   sudo ./scripts/disk_auditor.sh
   ```

6. **Run Script 4 — Log File Analyzer:**
   ```bash
   # Check syslog for "error" (default keyword)
   ./scripts/log_analyzer.sh /var/log/syslog
   
   # Use a custom keyword
   ./scripts/log_analyzer.sh /var/log/syslog warning
   
   # Check auth log (needs sudo)
   sudo ./scripts/log_analyzer.sh /var/log/auth.log "failed"
   ```

7. **Run Script 5 — Open Source Manifesto Generator:**
   ```bash
   ./scripts/manifesto_generator.sh
   ```
   Just follow the prompts. Your manifesto gets saved as `manifesto_<username>_<timestamp>.txt`.

---

## Dependencies

| Dependency | Required For | Install Command |
|------------|--------------|-----------------|
| bash | All scripts | Pre-installed on Linux |
| python3 | Script 2 (default package) | `sudo apt install python3` |
| coreutils | date, whoami, du, cut | Pre-installed on Linux |
| grep | Scripts 2, 4 | Pre-installed on Linux |
| gawk | Script 3 (awk) | Pre-installed on most Linux distros |

---

## License

The scripts in this repository are released for educational purposes as part of the VIT Open Source Software course. Do whatever you want with them but maybe dont try to sell them lol.

---

## About

This project is basically me exploring open-source software through Python — looking at why it exists, how it grew, and how people build stuff with it. Its about understanding open-source values like transparency and collaboration. The practical Linux work was actually pretty fun and it shows how sharing knowledge helps everyone build better technology.

---

## Resources

- [Python.org](https://python.org)
- [Python Software Foundation License](https://docs.python.org/3/license.html)
- [GNU Bash Manual](https://www.gnu.org/software/bash/manual/)

---
