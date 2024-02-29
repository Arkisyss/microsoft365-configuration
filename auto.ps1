    # Aller chercher les utilisateurs dans le fichier csv
$users = Import-Csv -Path "./csv-file/user.csv"

    # Parcourir chaque utilisateur et le créer dans Microsoft 365
foreach ($user in $users) {
    # Créer le mote de passe
    $SecurePassword = ConvertTo-SecureString -String $user.Password -AsPlainText -Force

    # Créer les utilisateurs
    New-AzureADUser -DisplayName $user.DisplayName -UserPrincipalName $user.UserPrincipalName -UserType Member -PasswordProfile @{ Password = $SecurePassword; ForceChangePasswordNextLogin = $false} -MailNickname user.MailNickname -UsageLocation $user.location -AccountEnabled $true
}

    # Attribution de la licence
Get-AzureADSubscribedSku

    # Importer les données des fichiers CSV
Get-MgUser | Select-Object -Property Id | Export-Csv -Path ./csv-file/Id-user.csv

$usersData = Import-Csv -Path "./csv-file/Id-user.csv"

# SkuId sous forme de chaîne
$skuId = Read-Host "Entrez l'ID de license (SkuId)"

foreach ($userData in $usersData) {
    
    # Attribuer la licence à l'utilisateur
    Set-MgUserLicense -UserId $userData.Id -AddLicenses @{SkuId = $skuId} -RemoveLicenses @()
}


# --- Gestion des groupes ---
Write-Host "------------------------"
Write-Host "                        "
Write-Host "Création des Groupes"
Write-Host "                        "
Write-Host "------------------------"

    # Création des groupes
New-UnifiedGroup -DisplayName "Administrateur" -Alias "Admin" -Notes "Groupe des administrateurs"
New-UnifiedGroup -DisplayName "Manager" -Alias "Man" -Notes "Groupe des managers"
New-UnifiedGroup -DisplayName "SimpleUsers" -Alias "User" -Notes "Groupe des utilisateurs"

    # Ajouter les membres aux groupes correspondant
$userForGrpAdmins = Import-Csv -Path "./csv-file/GRP-admin-user.csv"
$userForGrpManager = Import-Csv -Path "./csv-file/GRP-manager-user.csv"
$usersForGrpUser = Import-Csv -Path "./csv-file/GRP-users-user.csv"

foreach ($admUser in $userForGrpAdmins) {
    Add-UnifiedGroupLinks -Identity "Administrateur" -LinkType Members -Links $admUser.UserPrincipalName
}
foreach ($mgUser in $userForGrpManager) {
    Add-UnifiedGroupLinks -Identity "Manager" -LinkType Members -Links $mgUser.UserPrincipalName
}
foreach ($simpleUser in $usersForGrpUser) {
    Add-UnifiedGroupLinks -Identity "SimpleUsers" -LinkType Members -Links $simpleUser.UserPrincipalName
}

# Mettre des membre chef de leurs groupes
Write-Host "Ajouter les chef de groupes toujours en utilisant les 'UserPrincipalName' (Ex: JeanS@24pd52.onmicrosoft.com)"
$adminOwners = Read-Host "Entrez les chefs du groupe Administrator (séparés par des virgules et espace)"
$managerOwners = Read-Host "Entrez les chefs du groupe Manager (séparés par des virgules et espace)"
$userOwners = Read-Host "Entrez les chefs du groupe Users (séparés par des virgules et espace)"

Add-UnifiedGroupLinks -Identity "Administrateur" -LinkType Owners -Links $adminOwners
Add-UnifiedGroupLinks -Identity "Manager" -LinkType Owners -Links $managerOwners
Add-UnifiedGroupLinks -Identity "SimpleUsers" -LinkType Owners -Links $userOwners

Write-Host "Vérification des groupes"
Get-AzureADGroup -Verbose