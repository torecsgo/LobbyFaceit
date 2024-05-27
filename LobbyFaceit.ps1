# Solicita al usuario que ingrese la ID del partido
$matchId = Read-Host -Prompt "Introduce la ID del partido"

# Define la URL utilizando la ID del partido ingresada
$url = "https://open.faceit.com/data/v4/matches/$matchId"
$headers = @{
    "accept" = "application/json"
    "Authorization" = ""
}

# Realiza la solicitud HTTP
$response = Invoke-RestMethod -Uri $url -Headers $headers -Method Get

# Función para extraer los player_id y nicknames
function Extract-PlayerInfo {
    param (
        [array]$roster
    )
    $roster | ForEach-Object {
        [PSCustomObject]@{
            player_id = $_.player_id
            nickname  = $_.nickname
        }
    }
}

# Extrae la información de los jugadores de ambas facciones
$faction1Players = Extract-PlayerInfo -roster $response.teams.faction1.roster
$faction2Players = Extract-PlayerInfo -roster $response.teams.faction2.roster

# Combina los resultados de ambas facciones
$allPlayers = $faction1Players + $faction2Players

# Muestra los resultados
$allPlayers | Format-Table -AutoSize
