# Finding 01: Shared Administrative Access Accounts (ACC-01)

## Description
During the review of the cloud management console, auditors discovered a single user account named `admin-general` shared and utilized concurrently by 4 different support and infrastructure operators. All operators use the same static password, and Multi-Factor Authentication (MFA) is not enforced.

## Impact & Risk Assessment
* **Operational / Forensic Risk:** In the event of a security incident, unauthorized data alteration, or internal fraud, it is impossible to trace the action back to a specific individual (absolute loss of non-repudiation and accountability).
* **Risk Level:** High.

## Regulatory Mapping
* **CIS Benchmark (CIS 5.4):** Mandates that privileged administrative accounts must be individual and traceable.
* **NIST CSF (PR.AC-1):** Fails identity management and logical access control requirements.
* **ISO 27001 (A.9.2.1 - User Registration and De-registration):** Fails to formally manage user access privileges based on individual accountability.

## Remediation Roadmap
1. Immediately disable and deprovision the shared `admin-general` account.
2. Provision individual IAM profiles for each operator.
3. Enforce mandatory Multi-Factor Authentication (MFA) for all privileged accounts.