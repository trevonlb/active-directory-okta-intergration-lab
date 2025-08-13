
Import-Module ActiveDirectory
Set-ADDefaultDomainPasswordPolicy -ComplexityEnabled $false 


$SearchBase  = "DC=corp,DC=local"
$newPassword = ConvertTo-SecureString "1234567" -AsPlainText -Force

Get-ADUser -Filter * -SearchBase $SearchBase -Properties Enabled |
    Where-Object {
        $_.SamAccountName -ne "Administrator" -and
        $_.SamAccountName -ne "Guest"
    } |
    ForEach-Object {
        try {
            # Set the new password
            Set-ADAccountPassword -Identity $_.SamAccountName -NewPassword $newPassword -Reset

            # Enable the account
            Enable-ADAccount -Identity $_.SamAccountName

            Write-Host "Updated password and enabled account for $($_.SamAccountName)" -ForegroundColor Green
        }
        catch {
            Write-Host "Failed for $($_.SamAccountName): $($_.Exception.Message)" -ForegroundColor Red
        }
    }
