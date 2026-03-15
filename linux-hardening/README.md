# Linux Server Hardening Lab 🛡️

A technical demonstration of security best practices applied to a Linux environment. This project focuses on minimizing the attack surface and enforcing the **Principle of Least Privilege**.

---

## 🚀 Objective
To secure a fresh Linux (Ubuntu/Debian) installation against common external threats. The focus is on network isolation, access control, and user permission management.

## 🛠️ Security Measures Implemented

### 1. Network Perimeter Security (UFW)
Implemented strict firewall policies to deny all incoming traffic by default, allowing only essential SSH connections.
![Firewall Status](screenshot3.png)

### 2. SSH Hardening
Hardened the SSH service to mitigate brute-force and credential-stuffing attacks:
- **Port Obfuscation:** Changed the default `22` port to `2222`.
- **Root Access Restriction:** Disabled remote root login (`PermitRootLogin no`).
![SSH Configuration](screenshot7.png)

### 3. Identity & Access Management (IAM)
Adhered to the principle of least privilege by creating a dedicated non-root user with administrative (`sudo`) capabilities.
![User Groups](screenshot12.png)

---

## 🔑 Key Takeaways
* **Defense-in-Depth:** Small, consistent hardening steps significantly reduce vulnerability.
* **Proactive Security:** Transitioning from default configurations to tailored security policies is critical for production environments.

## 🛠️ Technologies Used
* **OS:** Linux (Ubuntu/Debian)
* **Tools:** UFW (Uncomplicated Firewall), OpenSSH, Bash.

---
*Built for educational purposes. Always test configurations in a virtualized environment before production deployment.*
