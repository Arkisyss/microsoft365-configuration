# Policy Creation
Write-Host "------------------------"
Write-Host " "
Write-Host "Creating Security Policies"
Write-Host " "
Write-Host "------------------------"

Connect-AzureAD

# Creating named location
New-AzureADMSNamedLocationPolicy -OdataType "#microsoft.graph.countryNamedLocation" -DisplayName "BeNeLux location" -CountriesAndRegions "NL", "BE", "LU" -IncludeUnknownCountriesAndRegions $false

# Creating conditions
$conditions = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessConditionSet
$conditions = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessConditionSet
$conditions.Applications = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessApplicationCondition
$conditions.Applications.IncludeApplications = "7b7531ad-5926-4f2d-8a1d-38495ad33e17", "1b912ec3-a9dd-4c4d-a53e-76aa7adb28d7", "ea890292-c8c8-4433-b5ea-b09d0668e1a6", "73c2949e-da2d-457a-9607-fcc665198967", "05a65629-4c1b-48c1-a78b-804c4abdd4af", "0000000a-0000-0000-c000-000000000000", "00000012-0000-0000-c000-000000000000", "01fc33a7-78ba-4d2f-a4b7-768e336e890e", "2f3f02c9-5679-4a5c-a605-0de55b07d135", "09abbdfd-ed23-44ee-a2d9-a627aa1c90f3"  
$conditions.Users = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessUserCondition
$conditions.Users.IncludeGroups = "ID Group ADMIN"  # CHANGE HERE
$conditions.Locations = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessLocationCondition
$conditions.Locations.IncludeLocations = "ID LOCATION POLICY"   # CHANGE HERE

$controls = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessGrantControls
$controls._Operator = "AND"
$controls.BuiltInControls = "mfa"
New-AzureADMSConditionalAccessPolicy -DisplayName "Require MFA and LOCATION for access security APP" -State "Enabled" -Conditions $conditions -GrantControls $controls

# ------------------------------------

$conditions = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessConditionSet
$conditions = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessConditionSet
$conditions.Applications = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessApplicationCondition
$conditions.Applications.IncludeApplications = "a1cffbc6-1cb3-44e4-a1d2-cee9cce700f1", "18cd1722-ae3d-4729-8e39-0ba15c742e28", "7df0a125-d3be-4c96-aa54-591f83ff541c", "40775b29-2688-46b6-a3b5-b256bd04df9f", "475226c6-020e-4fb2-8a90-7a972cbfc1d4", "797f4846-ba00-4fd7-ba43-dac1f8f63013"
$conditions.Users = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessUserCondition
$conditions.Users.IncludeGroups = "ID Group ADMIN"  # CHANGE HERE
$conditions.Locations = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessLocationCondition
$conditions.Locations.IncludeLocations = "ID LOCATION POLICY"   # CHANGE HERE

$controls = New-Object -TypeName Microsoft.Open.MSGraph.Model.ConditionalAccessGrantControls
$controls._Operator = "OR"
$controls.BuiltInControls = "mfa"
New-AzureADMSConditionalAccessPolicy -DisplayName "Require MFA or LOCATION for access prodcution APP" -State "Disabled" -Conditions $conditions -GrantControls $controls


Write-Host "------------------------"
Write-Host "End of the program"
Write-Host "------------------------"
