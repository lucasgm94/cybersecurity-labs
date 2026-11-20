# Cloud Identity & Access Management (Microsoft Entra ID / Azure)

## 1. Project Objective
Implement and administer a cloud identity governance environment using **Microsoft Entra ID (Free Tier)**, focusing on Identity Lifecycle Management (Joiner-Mover-Leaver), Role-Based Access Control (RBAC), Segregation of Duties (SoD), and baseline security hardening through Multi-Factor Authentication (MFA).

## 2. Implemented Scenarios

### A. Identity Lifecycle Management (Joiner - Mover - Leaver)
* **Provisioning (Joiner):** Created corporate user identities with standardized organizational attributes (`Department`, `Job Title`, `Usage Location`) to support attribute-based governance.
* **Deprovisioning (Leaver):** Simulated an employee offboarding event by disabling account sign-in (`Block sign-in`) for user *Franco Mastantuono* to immediately revoke access while preserving audit logs.

### B. Role-Based Access Control (RBAC) & Segregation of Duties (SoD)
* Designed dedicated security groups aligned with functional roles rather than broad organizational departments, enforcing the **Principle of Least Privilege**:
  * `G_ERP_Finanzas_Pagos`: Restricted exclusively to Finance personnel (*Ana Gómez*) for payment approvals.
  * `G_ERP_Compras_Ordenes`: Restricted exclusively to Procurement personnel (*Leonel Vangioni*) for purchase order management.

### C. Identity Security Baseline (Security Defaults)
* Enabled **Microsoft Entra Security Defaults** across the tenant to enforce a baseline protection layer without requiring premium licensing.
* Enforced Multi-Factor Authentication (MFA) registration and blocked legacy authentication protocols across all directory identities.

## 3. Repository Structure
* `screenshots/`: Visual evidence of user directory attributes, security group memberships, account offboarding state, and enabled Security Defaults.