# Windows Network Share Brute Force Script

This script is a **Batch script for Windows** designed to test multiple username and password combinations against a target machine’s network share using the `net use` command.  

It reads credentials from a text file (`credentials.txt`) and attempts to authenticate each pair against the target IP. If valid credentials are found, the script reports success and exits immediately.

---

## Requirements:

- **Windows OS** (Tested on Windows 10 / 11)
- A text file named **`credentials.txt`** with username and password pairs
- Basic knowledge of Windows command prompt

---

## Credentials File Format:

The file **`credentials.txt`** must contain username and password pairs separated by a space:
```
administrator password123
guest guest123
user1 P@ssw0rd!
```


Each line represents one combination that will be tested.

---

## Usage:

1. Edit the script to set the target IP address:  

   ```bat
   set "target_ip=<target_ip>"
   ```
Replace <target_ip> with the IP address of the machine you want to test.

Place your credentials.txt file in the same directory as the script.

Run the script from the Command Prompt:
```bat
   brute_force.bat
```

## Script Output:
If a login attempt is successful:
```bat
[SUCCESS] Valid credentials found: username / password
```
The script will immediately exit with code 0.

If a login attempt fails:
```bat
[FAILED] Invalid credentials: username / password
```
If all combinations fail:
```bat
All combinations failed
```
The script will exit with code 1.

   

