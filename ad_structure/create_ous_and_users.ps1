# Create users
foreach ($ou in $UsersByOU.Keys) {
    foreach ($user in $UsersByOU[$ou]) {
        # Extract first and last name
        $firstName = $user.Name.Split(" ")[0]
        $lastName  = $user.Name.Split(" ")[1]

        # Generate username (first initial + last name)
        $username = ($firstName.Substring(0,1) + $lastName).ToLower()

        # Create initial password: username + "lab123"
        $plainPassword = "$username" + "lab123"
        $securePassword = ConvertTo-SecureString $plainPassword -AsPlainText -Force

        # Define OU path
        $OUPath = "OU=$ou,$domainRoot"

        # Create the user
        New-ADUser `
            -Name $user.Name `
            -GivenName $firstName `
            -Surname $lastName `
            -SamAccountName $username `
            -UserPrincipalName "$username@corp.local" `
            -Title $user.Title `
            -Department $ou `
            -AccountPassword $securePassword `
            -Enabled $true `
            -Path $OUPath `
            -ChangePasswordAtLogon $false
    }
}

$domainRoot = "DC=corp,DC=local"

$UsersByOU = @{
	"HR" = @(
		@{Name="Alice Gray"; Title="HR Specialist"},
		@{Name="Tyler Knots"; Title="HR Manager"},
		@{Name="Nicky Fox"; Title="Recruiter"}
	)
	"IT" = @(
		@{Name="Drake Frank"; Title="IT Support"},
		@{Name="Chris Bell"; Title="Network Security Engineer"}
	)
	"Finance" = @(
		@{Name="Lilly Rose"; Title="Accountant"},
		@{Name="Karen Johnshon"; Title="Billing Manager"},
		@{Name="Irene Smith"; Title="Financial Analyst"}
	)
	"Staff" = @(
		@{Name="Mary Gold"; Title="Medical Assistant"},
		@{Name="Maya Gold"; Title="Medical Assistant"},
		@{Name="Nathan Creed"; Title="Medical Assistant"}
		@{Name="Alice Smith"; Title="Front Desk Asscociate"},
		@{Name="Nayla James"; Title="Front Desk Asscociate"},
		@{Name="Yasmine Bennedict"; Title="Front Desk Asscociate"}
	)
	"Corp" = @(
		@{Name="James White"; Title="Cardiologist"},
		@{Name="Calvin Brown"; Title="Cardiologist"},
		@{Name="John Smith"; Title="CEO"},
		@{Name="Suge Owens"; Title="COO"},
		@{Name="Donte James"; Title="CFO"}
	)
}
