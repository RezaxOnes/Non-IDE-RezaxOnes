# 📘 Non-IDE-RezaxOnes – Documentation

**1. Concept**

**Non-IDE-RezaxOnes** (formerly **Non-IDECPlusPlus**) is a lightweight IDE–editor hybrid that operates using a **wrapper mechanism**.

- Users type **high-level commands** (NIRO commands).
- NIRO converts and forwards them into **pure bash / terminal commands**.
- Terminal-only, no GUI — focused on speed, simplicity, and control.

### Key Features
- Simply type `r` or `run` to execute code instantly  
  → much faster than clicking the Run button in a traditional IDE.
- Includes a **Settings system** that allows:
  - editing aliases
  - redefining how commands behave.
- Commands are standardized using **human-friendly words** for easier usage.

---

**2. Basic Linux Commands**

# 2.1 rm -r
- Recursively removes a folder.
- ⚠️ Extremely dangerous if used incorrectly.
- Example: rm -r <file_or_path>
# 2.2 cd
- Changes the current working directory.
- Example: cd <path>
# 2.3 cd -
- Returns to the previous working directory.
- Only works for the last directory change.
# 2.4 cd .. / cd ../..
- Moves back one or more directory levels.
- Example: /home/user use "cd .." => /home
**3. Non-IDE-RezaxOnes-Command**
# 3.1 edit
- Edit a file using a specified editor.
- edit <editor> <file_or_path>
- Supported editors:
vm → Vim
vsc → Visual Studio Code
gte → GNOME Text Editor
- Example: edit gte ./test.cpp
# 3.2 r, run, m-run, mr, debug, m-debug
- run/r and debug = run fixed file in command you can edit it
- m-run/mr = manual run
- debug = debug fixed file in command you can edit it
- m-debug = manual debug
- Example: >> ./test.cpp
# 3.3 list
- Lists the contents of a directory.
- Equivalent to ls.
- Example: NIRO-C list <path>
# 3.4 edit
- Edit any file.
- Example: NIRO-C edit <editor> <file>
# 3.5 compiler
- Compile a file (default language: C++).
- Example: NIRO-C compiler <file>
# 3.6 run
- Execute a compiled file.
- Example: NIRO-C run <file>
# 3.7 new
- Create a file or folder.
- Example: NIRO-C new <file|folder> <name>
# 3.8 remove
- Immediately remove a specified file or folder.
- Example: NIRO-C remove <file|folder> <target>
# 3.9 safe-remove
- Remove a file or folder with confirmation.
- Example: NIRO-C safe-remove <file|folder> <target>
**4. Non-IDE-RezaxOnes-Settings**
# 4.1 edit
- Edit command files or redefine how commands work
(e.g., change run from C++ execution to Python execution).
- Example: NIRO-S edit <editor> <file>
# 4.2 list
- List all editable command files.
- Example: NIRO-S list
## ---------------- Last Update: 09/02/2026 ----------------