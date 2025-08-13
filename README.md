# active-directory-okta-intergration-lab
## Overview
This lab simulates a corporate IT environment using Microsoft Server 2022, Active Directory, and Okta to implement core Identity & Access Management workflows, essential security policies, and user provisioning automation. It demonstrates practical, end-to-end integration between on-premises directory services and a cloud identity provider, while also incorporating endpoint security controls and role assignment.

The environment is designed to be realistic, modular, and adaptable, reflecting the types of IAM and infrastructure administration tasks performed in enterprise settings.
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
