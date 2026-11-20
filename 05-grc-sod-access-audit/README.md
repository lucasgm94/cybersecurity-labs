# ERP Access Audit & Segregation of Duties (SoD)

## 1. Project Objective
Simulate an access control audit on a corporate ERP user database to identify **Segregation of Duties (SoD)** conflicts, assess operational and internal fraud risks, and propose remediation plans aligned with Governance, Risk, and Compliance (GRC) frameworks and the Principle of Least Privilege.

## 2. Technical Methodology
A relational SQL model was designed consisting of two core entities:
* `Accesos_ERP`: Matrix of active identities, functional departments, and assigned roles.
* `Reglas_SoD`: Catalog of critical incompatibilities between permissions.

Using SQL queries (`INNER JOIN`), assigned user permissions were cross-referenced against the risk matrix to detect toxic privilege combinations.

## 3. Executive Summary of Findings
After analyzing the active identity universe, **2 critical compliance violations** were detected:

| User ID | Name | Department | Violated Rule | Conflicting Combination | Risk Level |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **U01** | Ana Gómez | Finance | `SOD-01` | `Crear_Proveedores` + `Aprobar_Pagos` | **CRITICAL** |
| **U04** | Franco Mastantuono | IT / Systems | `SOD-02` | `Admin_Base_Datos` + `Aprobar_Pagos` | **HIGH** |

## 4. Impact Analysis & Remediation Plan

* **Finding #1 (SOD-01 - Critical Risk):** User *Ana Gómez* has simultaneous capabilities to onboard vendors and approve payments, exposing the organization to fictitious vendor fraud.
  * **Recommended Action:** Immediately revoke the `Crear_Proveedores` role from user `U01`, restricting vendor creation exclusively to the Procurement department.
* **Finding #2 (SOD-02 - High Risk):** Technical user *Franco Mastantuono* (Database/Infrastructure Administrator) holds operational financial approval privileges within the ERP.
  * **Recommended Action:** Revoke the functional role `Aprobar_Pagos` from user `U04` to enforce strict separation between technical administration and financial operations.

## 5. Repository Structure
* `erp_schema_seed.sql`: SQL script for table creation and mock data insertion.
* `sod_audit_query.sql`: SQL audit query used to detect SoD conflicts.
* `sod_findings_2026.csv`: Exported technical evidence containing the audit results.
* `screenshots/`: Visual evidence of query execution and results.