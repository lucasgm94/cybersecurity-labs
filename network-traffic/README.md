# 🔍 Network Traffic Analysis Lab

### 🎯 Objective
This project explores real-world network traffic to understand the critical difference between insecure (**HTTP**) and secure (**HTTPS**) protocols. As an aspiring Cybersecurity Analyst, I conducted this lab to demonstrate my ability to use packet analysis tools and identify the importance of encryption.

---

### 🛠️ Lab Environment
* **Tool:** [Wireshark](https://www.wireshark.org/)
* **OS:** Windows 10/11
* **Scope:** Real-time packet capture on local Wi-Fi interface.

---

### 📊 Findings & Analysis

#### 1. HTTP Protocol (Plaintext Traffic) 🔓
When accessing websites using HTTP, data is sent in plaintext, making it highly vulnerable to interception.

![Insecure HTTP Traffic](screenshots/screenshot1.png)

* **Key Finding:** I was able to observe `GET` requests and sensitive headers like `User-Agent`. This highlights a classic security risk where an attacker could easily perform a *Man-in-the-Middle (MITM)* attack to capture user data.

#### 2. HTTPS Protocol (Encrypted Traffic) 🔒
By applying the `http` filter to modern websites, the results were empty.

![Filtered HTTPS Traffic](screenshots/screenshot2.png)

* **Key Finding:** The filter returned `0` results. This confirms that **TLS (Transport Layer Security)** successfully encrypts the communication, rendering the traffic invisible to standard protocol filters and protecting it from unauthorized inspection.

#### 3. Deep Packet Inspection (Raw Data) 🕵️‍♂️
Capturing traffic without filters reveals the complex nature of network communication.

![Encrypted Binary Data](screenshots/screenshot3.png)

* **Key Finding:** Even when capturing thousands of packets, the payload remains unreadable binary/hexadecimal data. This proves that encryption protects data integrity and confidentiality, confirming that my network traffic is secure against basic sniffing.

---

### 🎓 Conclusion
This lab reinforced that **network visibility depends on encryption implementation**. While HTTP exposes data, HTTPS ensures privacy. As an analyst, I learned that my focus should be on **metadata analysis, TLS handshake patterns, and anomaly detection** rather than just "reading" traffic.

---

### 🚀 How to replicate
1. Install [Wireshark](https://www.wireshark.org/).
2. Start a capture on your active network interface.
3. Filter by `http` and visit [neverssl.com](http://neverssl.com/) (for insecure testing).
4. Compare with any major website (like Google or YouTube) and observe how encryption hides the payload.

*Happy Hunting!* 🛡️
