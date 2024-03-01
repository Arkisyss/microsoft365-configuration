# --- Module Management ---
Write-Host "------------------------"
Write-Host "                        "
Write-Host "Installing modules"
Write-Host "                        "
Write-Host "------------------------"

Install-Module -Name AzureADPreview -Force -AllowClobber
Install-Module -Name MSOnline -Force -AllowClobber
Install-Module -Name ExchangeOnlineManagement -Force -AllowClobber
Install-Module Microsoft.Graph
Import-Module -Name MSOnline
Import-Module ExchangeOnlineManagement
Import-Module AzureADPreview

# --------------------------------------------

# Exchange Management
Write-Host "------------------------"
Write-Host "                        "
Write-Host "Configuring Exchange"
Write-Host "                        "
Write-Host "------------------------"

# Connect to Exchange Online module
$exchangeName = Read-Host "Enter the 'UserPrincipalName' of the admin (Ex: JeanS@24pd52.onmicrosoft.com)"
Connect-ExchangeOnline -UserPrincipalName $exchangeName

# Setting up the 'extern' tag
Set-ExternalInOutlook -Enabled $true

# Blocking dangerous extensions
$extensions = Import-Csv -Path "./csv-file/extension.csv"
foreach ($extension in $extensions){
    $extensionName = $extension.Extension.Trim()
    $ruleName = "Block $extensionName files"
    New-TransportRule -Name $ruleName -AttachmentNameMatchesPatterns @($extensionName) -RejectMessageReasonText "The message could not be sent." -Mode "Enforce"
}
# Checking rules
Get-TransportRule | Format-Table Name,RejectMessageReasonText,AttachmentNameMatchesPatterns

# --------------------------------------------

# User Management
Write-Host "------------------------"
Write-Host "                        "
Write-Host "Configuring users"
Write-Host "Source file 'csv-file/user.csv'"
Write-Host "                        "
Write-Host "------------------------"

# Connect to AzureAD module
Connect-AzureAD
Connect-MSOLService
Connect-MgGraph -Scopes User.ReadWrite.All, Organization.Read.All

# Fetch users from csv file
$users = Import-Csv -Path "./csv-file/user.csv"

# Iterate over each user and create them in Microsoft 365
foreach ($user in $users) {
    # Create password
    $SecurePassword = ConvertTo-SecureString -String $user.Password -AsPlainText -Force

    # Create users
    New-AzureADUser -DisplayName $user.DisplayName -UserPrincipalName $user.UserPrincipalName -UserType Member -PasswordProfile @{ Password = $SecurePassword; ForceChangePasswordNextLogin = $false} -MailNickname user.MailNickname -UsageLocation $user.location -AccountEnabled $true
}

Get-AzureADSubscribedSku

# Import CSV file data
Get-MgUser | Select-Object -Property Id | Export-Csv -Path ./csv-file/Id-user.csv

$usersData = Import-Csv -Path "./csv-file/Id-user.csv"

# SKU ID as a string
$skuId = Read-Host "Enter the license ID (SkuId)"

foreach ($userData in $usersData) {
    
    # Assign license to user
    Set-MgUserLicense -UserId $userData.Id -AddLicenses @{SkuId = $skuId} -RemoveLicenses @()
}

# --------------------------------------------

# Group Management
Write-Host "------------------------"
Write-Host "                        "
Write-Host "Creating groups"
Write-Host "                        "
Write-Host "------------------------"

# Create groups
New-UnifiedGroup -DisplayName "Administrators" -Alias "Admin" -Notes "Group of administrators"
New-UnifiedGroup -DisplayName "Managers" -Alias "Man" -Notes "Group of managers"
New-UnifiedGroup -DisplayName "SimpleUsers" -Alias "User" -Notes "Group of users"

# Add members to corresponding groups
$userForGrpAdmins = Import-Csv -Path "./csv-file/GRP-admin-user.csv"
$userForGrpManager = Import-Csv -Path "./csv-file/GRP-manager-user.csv"
$usersForGrpUser = Import-Csv -Path "./csv-file/GRP-users-user.csv"

foreach ($admUser in $userForGrpAdmins) {
    Add-UnifiedGroupLinks -Identity "Administrators" -LinkType Members -Links $admUser.UserPrincipalName
}
foreach ($mgUser in $userForGrpManager) {
    Add-UnifiedGroupLinks -Identity "Managers" -LinkType Members -Links $mgUser.UserPrincipalName
}
foreach ($simpleUser in $usersForGrpUser) {
    Add-UnifiedGroupLinks -Identity "SimpleUsers" -LinkType Members -Links $simpleUser.UserPrincipalName
}

# Make some members owners of their groups
Write-Host "Adding group owners, always using 'UserPrincipalName' (Ex: JeanS@24pd52.onmicrosoft.com)"
$adminOwners = Read-Host "Enter owners for Administrators group (comma-separated with spaces)"
$managerOwners = Read-Host "Enter owners for Managers group (comma-separated with spaces)"
$userOwners = Read-Host "Enter owners for Users group (comma-separated with spaces)"

Add-UnifiedGroupLinks -Identity "Administrators" -LinkType Owners -Links $adminOwners
Add-UnifiedGroupLinks -Identity "Managers" -LinkType Owners -Links $managerOwners
Add-UnifiedGroupLinks -Identity "SimpleUsers" -LinkType Owners -Links $userOwners

Write-Host "Group verification"
Get-AzureADGroup -Verbose

Write-Host "------------------------"
Write-Host "End of the program"
Write-Host "------------------------"
