# Lab 06: IT Security Compliance & GAP Analysis (ISO 27001, NIST CSF, CIS)

## 1. Executive Summary
This document presents a formal **GAP Analysis and Compliance Audit** conducted on the cloud-native infrastructure of **CloudScale FinTech S.A.** The objective was to evaluate the organization's current security posture against three foundational frameworks: **ISO/IEC 27001 (Annex A)**, the **NIST Cybersecurity Framework (CSF)**, and **CIS Benchmarks**, translating technical vulnerabilities into actionable governance metrics.

## 2. Audit Scope & Methodology
* **Target Environment:** Cloud management console and production cloud infrastructure.
* **Frameworks Applied:**
  * *CIS Benchmarks:* Technical configuration baselines.
  * *NIST CSF:* Strategic risk functions (*Protect, Detect, Recover*).
  * *ISO/IEC 27001 Annex A:* Regulatory compliance and certification standards.
* **Detailed Findings:** For a deep dive into each identified gap, review the documents inside the [`docs/`](docs/) folder.
* **Compliance Matrix:** The complete mapping of controls, statuses, and remediation plans is available in [`compliance_matrix.csv`](compliance_matrix.csv).

## 3. High-Level Audit Findings Summary

| Control ID | Audit Area | CIS Ref | NIST CSF | ISO 27001 Ref | Status | Risk Level | Finding Overview |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **ACC-01** | Access Control | CIS 5.4 | PR.AC-1 | A.9.2.1 | **Gap** | High | Shared administrative credentials in the cloud console. |
| **NET-02** | Network Security | CIS 9.2 | PR.PT-4 | A.13.1.1 | **Gap** | Medium | Unrestricted inbound SSH (Port 22) exposed to 0.0.0.0/0. |
| **BCP-03** | Operations | CIS 11.1 | RC.RP-1 | A.12.3.1 | **Gap** | High | Automated database backups lacking integrity verification. |

## 4. Conclusion & Next Steps
Addressing these gaps is mandatory before undergoing an official ISO 27001 certification audit. Implementation of the remediation roadmap has been assigned to the infrastructure and security engineering teams under GRC supervision.