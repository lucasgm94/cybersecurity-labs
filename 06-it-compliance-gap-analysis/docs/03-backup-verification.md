# Finding 03: Unverified Automated Database Backups (BCP-03)

## Description
The system generates automated database backups nightly; however, audit logs and interviews revealed that restoration drills or integrity verification tests have never been performed.

## Impact & Risk Assessment
* **Business Continuity Risk:** A backup that cannot be successfully restored is invalid. In the event of a ransomware attack or storage corruption, the organization faces catastrophic data loss and prolonged downtime.
* **Risk Level:** High.

## Regulatory Mapping
* **CIS Benchmark (CIS 11.1):** Maintain regular backup processes and verify data recovery capability.
* **NIST CSF (RC.RP-1):** Recovery processes and procedures are executed and maintained.
* **ISO 27001 (A.12.3.1 - Information Backup):** Copies of software and information shall be taken and tested regularly.

## Remediation Roadmap
1. Establish a formal backup verification policy.
2. Implement automated recovery tests on a semi-annual basis to validate backup integrity and restoration times (RTO/RPO).