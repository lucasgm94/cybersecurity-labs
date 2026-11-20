# 🔍 Network Traffic Analysis: HTTP vs. HTTPS (Wireshark)

This laboratory focuses on packet inspection and network protocol analysis using **Wireshark**. The goal was to identify the security implications of unencrypted traffic versus encrypted sessions.

---

## 🛠️ Analysis Tools
* **Packet Analyzer:** Wireshark
* **Protocols Inspected:** HTTP, TLS (v1.2/v1.3), TCP, IPv6.
* **Environment:** Live WiFi traffic capture.

---

## 📊 Laboratory Phases

### Phase 1: Cleartext Data Inspection (HTTP)
In this phase, I filtered for `http` traffic. As shown in the documentation:
* **Protocol Vulnerability:** HTTP transmits data in cleartext. 
* **Deep Packet Inspection:** I was able to intercept a `GET` request to `neverssl.com`.
* **Exposed Information:** User-Agent details, Host information, and the full Request URI are completely visible to any "man-in-the-middle" attacker.

### Phase 2: Encrypted Traffic Analysis (HTTPS/TLS)
After deploying my site on AWS Amplify (which enforces HTTPS), I analyzed the secure traffic:
* **Protocol:** TLS (Transport Layer Security).
* **Encryption Impact:** Unlike the HTTP capture, the **Application Data** is encrypted. 
* **Payload Privacy:** As seen in the hex/ascii panel, the content is unreadable (ciphertext), ensuring the confidentiality and integrity of the user's data.

---

## 🛡️ Cybersecurity Insights

| Feature | HTTP (Insecure) | HTTPS (Secure) |
|:---:|:---|:---|
| **Confidentiality** | ❌ None. Data is visible. | ✅ High. Data is encrypted. |
| **Integrity** | ❌ Risk of packet injection. | ✅ Protected by MAC/Signatures. |
| **Authentication** | ❌ No server validation. | ✅ Verified via SSL Certificates. |

---

## 🎓 Key Takeaways
* **Defense in Depth:** This lab reinforces why modern cloud deployments (like my AWS Amplify project) must strictly enforce HTTPS.
* **Network Forensic Skills:** Gained experience in identifying handshake patterns and analyzing the OSI Model Layer 4 (Transport) and Layer 7 (Application).

---
*Analyzed by [Lucas Martinez](https://github.com/lucasgm94)*
