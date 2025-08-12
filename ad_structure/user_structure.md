# Active Directory Lab Structure

This lab sets up an **Active Directory (AD)** environment with multiple **Organizational Units (OUs)**, user accounts, and predefined roles.  
It uses a PowerShell script to automate user creation with secure passwords, department assignments, and initial configurations.

## Organizational Units (OUs)
The AD structure includes the following OUs:

- **HR** – Human Resources staff  
- **IT** – IT support and engineering staff  
- **Finance** – Accounting and financial staff  
- **Staff** – Front desk and medical assistants  
- **Corp** – Executive leadership and corporate roles  

## Roles & Admins
The following **administrative accounts** exist:

- **Trevon B.** – CTO *(Admin)*  
- **Chris Bell** – Network Security Engineer *(Admin)*  
- **John Smith** – CEO *(Admin)*  

## Script Overview
The PowerShell script:

1. Iterates through each OU in `$UsersByOU`
2. Splits each user’s first and last name
3. Generates a username in the format: `firstinitiallastname` (lowercase)
4. Creates a default password: `username + "lab123"`
5. Assigns the user to their respective OU and sets account attributes
6. Enables the account for immediate use

## Example Username

1. Name: Alice Gray
2. Username: agray
3. Password: agraylab123
