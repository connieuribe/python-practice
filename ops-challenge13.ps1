# Script: Ops 301 Class 13 Ops Challenge Solution
# Author: Connie Uribe Chavez
# Date of lates revision: 30 Mar 2023
# Purpose: AD Powershell Scripting

# Main


# Write a Powershell script that adds the below person to AD.
# Franz Ferdinand is the TPS Reporting Lead at GlobeX USA in Springfield, 
# OR office. Franz is part of the TPS Department. Franz’s email is ferdi@GlobeXpower.com.
# Test your script. Verify in ADAC that the user was created with the correct attributes. 
# If anything is missing, delete the user in ADAC and re-attempt from Powershell ISE.
New-ADOrganizationalUnit -Name "TPS Department" -ProtectedFromAccidentalDeletion $false
New-ADUser -Name "f.ferdinand" -GivenName "Franz" -Surname "Ferdinand" -Organization "TPS Department" -OtherAttributes @{'title'="TPS Reporting Lead"; 'mail'="ferdi@GlobeXpower.com"}