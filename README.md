# LobbyFaceit

## Instructions to Execute the PowerShell Script

1. **Open PowerShell**:
   - On Windows, search for "PowerShell" in the Start menu and open it.
   - On macOS or Linux, open your terminal and type `pwsh` to start PowerShell (if PowerShell Core is installed).

2. **Clone the Repository (if applicable)**:
   - If you haven't already cloned the repository containing the script, do so with the following command:
   ```bash
   git clone https://github.com/torecsgo/LobbyFaceit.git
   ```

3. **Run the Script**:
   - Ensure you are in the directory containing the script.
   - Execute the script by typing the following command:
   ```powershell
   .\LobbyFaceit.ps1
   ```

4. **Follow the Prompts**:
   - You will be prompted to enter the match ID. Type the match ID and press Enter.
   - Example Match ID: 1-6df9ea22-2953-419d-acdb-992c07d4a8ab
   ![Alt text](https://i.imgur.com/8bLvpEx.png)
     
5. **View the Output**:
   - The script will make an HTTP request to the specified URL using the provided match ID.
   - It will extract player information from both factions and display the player IDs and nicknames in a formatted table.
  
## Things to do
1. **Set the Execution Policy**:

   - Run the following command to allow the script to execute. You might need to run PowerShell as an administrator to change the execution policy:
   ```powershell
   Set-ExecutionPolicy Unrestricted -Scope Process -Force
   ```
2. **Edit the Script to Add Your Faceit TOKEN**:
   - Open the script file in a text editor and add your Faceit TOKEN to the $headers hashtable. It should look like this:

```powershell
$headers = @{
   "accept" = "application/json"
   "Authorization" = "Bearer YOUR_FACEIT_TOKEN"
}
```
