
# --- Gestion des mdoules ---
Write-Host "------------------------"
Write-Host "Installation des modules"
Write-Host "------------------------"

# Installation des modules
# Les modules seront importé au fur et a mesure de leurs utilisations.
Install-Module -Name AzureADPreview -Force -AllowClobber
Install-Module -Name MSOnline -Force -AllowClobber
Install-Module -Name ExchangeOnlineManagement -Force -AllowClobber
Install-Module Microsoft.Graph


# --- Gestion de Exchange ---
Write-Host "------------------------"
Write-Host "Configuration de Exchange"
Write-Host "------------------------"

# Import du Module Exchange OnlineQ
Import-Module ExchangeOnlineManagement

# Connexion au module Exchange Online
$exchangeName = Read-Host "Entrer le 'UserPrincipalName' de l'administrateur principale (Ex: JeanS@24pd52.onmicrosoft.com)"
Connect-ExchangeOnline -UserPrincipalName $exchangeName

# Mise en place du tag 'extern'
Set-ExternalInOutlook -Enabled $true

# Bloquer les extensions dangereuses
$extensions = Import-Csv -Path "./extension.csv"
foreach ($extension in $extensions){
    $extensionName = $extension.Extension.Trim()
    $ruleName = "Block $extensionName files"
    New-TransportRule -Name $ruleName -AttachmentNameMatchesPatterns @($extensionName) -RejectMessageReasonText "Le message n'a pas pu être envoyé." -Mode "Enforce"
}
# Vérification des rgèles
Get-TransportRule | Format-Table Name,RejectMessageReasonText,AttachmentNameMatchesPatterns


# --- Gestion des utilisateur ---
Write-Host "------------------------"
Write-Host "Création des utilisateur"
Write-Host "Fichier source pour créer les utiliseur 'user.csv'"
Write-Host "------------------------"

# Import du module AzurAD
Import-Module AzureAD

# Connexion au module AzureAD
Connect-AzureAD

# Aller chercher les utilisateur dans le fichier csv
$users = Import-Csv -Path "./user.csv"

# Parcourir chaque utilisateur et le créer dans Microsoft 365
foreach ($user in $users) {
    # Créer le mote de passe
    $SecurePassword = ConvertTo-SecureString -String $user.Password -AsPlainText -Force

    # Créer les utilisateurs
    New-AzureADUser -DisplayName $user.DisplayName -UserPrincipalName $user.UserPrincipalName -UserType Member -PasswordProfile @{ Password = $SecurePassword; ForceChangePasswordNextLogin = $false} -MailNickname user.MailNickname -AccountEnabled $true

    # Ajouter la license aux utilisateur
    # Set-AzureADUserLicense -PbjectId (Get-AzureADUser -Filter "UserPrinciaplName eq '$($user.UserPrinciaplName)'").ObjectId -AssignedLicenses $user.LicenseAssignement
}


# --- Gestion des groupes ---
Write-Host "------------------------"
Write-Host "Création des Groupes"
Write-Host "------------------------"

# Création des rgoupes
New-UnifiedGroup -DisplayName "Administrator" -Alias "Admin" -Notes "Groupe des administrateurs"
New-UnifiedGroup -DisplayName "Manager" -Alias "Man" -Notes "Groupe des managers"
New-UnifiedGroup -DisplayName "Users" -Alias "User" -Notes "Groupe des utilisateurs"

# Ajouter les membres aux groupes correspondant
Write-Host "Pour ajouter les utilisateur aux groupes utiliser les 'UserPrincipalName' (Ex: JeanS@24pd52.onmicrosoft.com)"
$adminMembers = Read-Host "Entrez les membres à ajouter au groupe Administrator (séparés par des virgules)"
$managerMembers = Read-Host "Entrez les membres à ajouter au groupe Manager (séparés par des virgules)"
$userMembers = Read-Host "Entrez les membres à ajouter au groupe Users (séparés par des virgules)"

Add-UnifiedGroupLinks -Identity "Administrator" -LinkType Members -Links $adminMembers
Add-UnifiedGroupLinks -Identity "Manager" -LinkType Members -Links $managerMembers
Add-UnifiedGroupLinks -Identity "Users" -LinkType Members -Links $userMembers

# Mettre des membre chef de leurs groupes
Write-Host "Ajouter les chef de groupes toujours en utilisant les 'UserPrincipalName' (Ex: JeanS@24pd52.onmicrosoft.com)"
$adminOwners = Read-Host "Entrez les chefs du groupe Administrator (séparés par des virgules)"
$managerOwners = Read-Host "Entrez les chefs du groupe Manager (séparés par des virgules)"
$userOwners = Read-Host "Entrez les chefs du groupe Users (séparés par des virgules)"

Add-UnifiedGroupLinks -Identity "Administrator" -LinkType Owners -Links $adminOwners
Add-UnifiedGroupLinks -Identity "Manager" -LinkType Owners -Links $managerOwners
Add-UnifiedGroupLinks -Identity "Users" -LinkType Owners -Links $userOwners

Write-Host "Vérification des groupes"
Get-AzureADGroup
