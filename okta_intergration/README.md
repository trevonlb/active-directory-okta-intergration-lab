# Okta Integration Setup

## Purpose
This subdirectory documents the process of integrating **Microsoft Active Directory** with **Okta** in a lab environment.

The primary goal was to:
- Install the **Okta AD Agent** onto a Windows Server device joined to the AD domain.
- Synchronize specific **Organizational Units (OUs)** and **security groups** from Active Directory into Okta.

## Scope
While the main focus was AD–Okta integration, some additional Okta integrations were downloaded (but not configured), including:
- **Google Workspace** app integration
- **Cisco ASA VPN** app integration

## Contents
- **Screenshots that include visual evidence of synced users, groups, and OUs within Okta.

## Notes
This portion of the lab was designed to simulate real-world **Identity and Access Management (IAM)** scenarios, focusing on:
- Automated user lifecycle management from AD to Okta.
- Group-based application access control.
- Preparing the environment for SSO and MFA enforcement.
