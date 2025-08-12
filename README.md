# active-directory-okta-intergration-lab
## Overview
This lab simulates a corporate IT environment using Microsoft Server 2022, Active Directory, and Okta to explore Identity & Access Management, security policies, and automation.

## Features
* Active Directory Setup

  * Automated OU creation: IT, HR, Finance, Staff, Corporate.
  * PowerShell-based bulk user creation with titles, usernames, and initial passwords.

* Security Policies
  * Screen lock after 300 seconds.
  * USB device disablement.
  * Audit logon events.
  * Disable Command Prompt & PowerShell for non-admins.
  * Pre-logon legal notice.

* Okta Integration
   * AD Agent installation.
   * MFA, Google SSO, and SAML configuration.
   * All domain users synchronized with Okta.

* Networking
   * DHCP server setup via second NIC.

* Technical Notes
   * Password complexity issues initially caused account disablement, which was resolved with updated credentials.
   * IT staff elevated to AD admins.

* Skills Demonstrated
   * PowerShell Automation
   * Active Directory Management
   * Group Policy Administration
   * Identity & Access Management (IAM)
   * Okta Integration
   * Windows Server Networking
