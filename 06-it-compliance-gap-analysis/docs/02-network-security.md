# Finding 02: Unrestricted Network Exposure via SSH (NET-02)

## Description
Upon reviewing cloud security group configurations and firewall ingress rules, auditors detected that TCP Port 22 (SSH) was left publicly open to the entire internet (`0.0.0.0/0`).

## Impact & Risk Assessment
* **Attack Surface Risk:** Exposes the server management plane to automated brute-force attacks, vulnerability exploitation, and unauthorized remote access attempts from malicious actors globally.
* **Risk Level:** Medium.

## Regulatory Mapping
* **CIS Benchmark (CIS 9.2):** Ensure that only necessary ports and protocols are exposed, restricting administrative access.
* **NIST CSF (PR.PT-4):** Access control permissions and communications are protected.
* **ISO 27001 (A.13.1.1 - Network Controls):** Networks shall be managed and controlled to protect information in systems and applications.

## Remediation Roadmap
1. Restrict security group ingress rules for Port 22 immediately.
2. Limit SSH access exclusively to trusted corporate VPN gateways or explicit administrative static IP ranges.